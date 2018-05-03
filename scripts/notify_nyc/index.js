let to_remove =
`
To view this message in American Sign Language`;


function notify_nyc(url)
{
    (url.substr(0, 5) === 'https' ? require('https') : require('http'))
    .get(url, (res) =>
    {
        let parser = new require('feedme')(true);
        res.pipe(parser);
        parser.on('item', (item) =>
        {
            try
            {
                if
                (
                    Math.abs(new Date(item.pubdate).getTime() - new Date().getTime())
                    < 86400000
                )
                {
                    let loc1 = -1;
                    let loc2 = -1;
                    let loc3 = -1;

                    item.title = '\033[0;1m' + item.title + '\033[0;0m';

                    loc1 = item.description.indexOf(to_remove);
                    if(loc1 !== -1) item.description = item.description.substr(0, loc1);

                    loc2 = item.description.indexOf('Notification issued ');
                    loc3 = item.description.indexOf('.');

                    if(loc2 !== -1 && loc3 !== -1)
                    {
                        item.title += ' ' + `\x1b[3m` +
                                              item.description
                                              .substr(loc2, loc3)
                                              .substr(20)
                                          + '\033[0;0m';
                        item.description = item.description.substr(loc3+2);
                    }

                    console.log(item.title);
                    console.log(item.description.trim(), '\n');
                }
            }
            catch(err)
            {
                console.error('\033[0;1mITEM EVENT FAILED, EXITING\033[0;0m');
                console.error(err);
                console.log(item);
            }
        });
    }).on('error', (err) =>
    {
        console.error('\033[0;1mHTTP GET error on feed fetching\033[0;0m');
        console.error(err);
    });
}

notify_nyc('https://a858-nycnotify.nyc.gov/notifynyc/RSS/NotifyNYC.aspx');