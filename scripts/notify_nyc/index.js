let all_desc = [];

let timeout_clearance = 0;
let parsed_date;

function feed_to_obj(url)
{
    (url.substr(0, 5) === 'https' ? require('https') : require('http'))
    .get(url, (res) =>
    {
        console.log('Fetched feed');
        let parser = new require('feedme')(true);
        res.pipe(parser);
        parser.on('item', (item) =>
        {
            try
            {
                parsed_date = new Date(item.pubdate);
                if(Math.abs(parsed_date.getTime() - new Date().getTime()) < 86400000)
                {
                    if(all_desc.indexOf(require('sha1')(item.description)) !== -1)
                        return;

                    all_desc.push(require('sha1')(item.description));

                    process.stdout.write
                    (`Saved notification size ${all_desc.length}\r`);

                    setTimeout
                    (
                        () =>
                        {
                            require('node-notifier').notify
                            (
                                {
                                    title : item.title,
                                    message : item.description,
                                    timeout : 10
                                }
                            );

                            timeout_clearance -= 11000;
                            if(timeout_clearance < 0)
                                timeout_clearance = 0;
                        },
                        timeout_clearance
                    );

                    timeout_clearance += 11000;
                }
            }
            catch(err)
            {
                console.error(err);
                require('node-notifier').notify('ITEM EVENT FAILED, EXITING');
                process.exit(0);
            }
        });
    }).on('error', (err) =>
    {
        console.error(err);
        require('node-notifier').notify('HTTP GET error on feed fetching');
    });
}

feed_to_obj('https://a858-nycnotify.nyc.gov/notifynyc/RSS/NotifyNYC.aspx');
setInterval
(
    () => feed_to_obj('https://a858-nycnotify.nyc.gov/notifynyc/RSS/NotifyNYC.aspx'),
    60000
);