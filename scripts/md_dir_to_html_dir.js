/**
 * Tested with:
 * + Node v8.9.3
 * + NPM 5.5.1
 * + Pandoc 1.19.2.1
 * + Solus OS 3.26.2
 */

let fs   = require('fs');
let exec = require('child_process').exec;

// pandoc (http://pandoc.org/) must be installed and accessible from terminal
// markdown files must have .md ending

// Do not include ending '/' in setting these two variable value:
let md_dir   = './markdown'; // directory that will contain markdown [must exist]
let html_dir = './html'; // directory that will contain generated html


md_to_html(md_dir)
.then(() =>
{
    console.info('All complete');
})
.catch((err) =>
{
    console.info('Completed with an error:\n', err);
});


// ------------------------------------------------------------------------------


function md_to_html(markdown_root_dir)
{
    let inside_dir = fs.readdirSync(markdown_root_dir, { encoding : 'utf8'});

    let promise_chain = Promise.resolve();

    for(let i = 0; i < inside_dir.length; ++i)
    {
        if(fs.statSync(markdown_root_dir + '/' + inside_dir[i]).isDirectory())
        {
            md_to_html(markdown_root_dir + '/' + inside_dir[i]);
        }
        else if(inside_dir[i].slice(-2) == 'md')
        {
            let md_path   = markdown_root_dir + '/' + inside_dir[i];
            let html_path = html_dir + md_path.substr(md_dir.length)
                html_path = html_path.substr(0, html_path.length-3) + '.html';

            promise_chain =
            promise_chain.then(() =>
            {
                return run_command
                    (`mkdir -p ${html_dir+markdown_root_dir.substr(md_dir.length)}`);

            })
            .then(() =>
            {
                return run_command(`pandoc ${md_path} -so ${html_path}`);
            });
        }
    }

    return promise_chain;
}


function run_command(command)
{
    return new Promise((resolve, reject) =>
    {
        console.log('Executing:', command);
        exec(command, (err, stdout, stderr) =>
        {
            if(err)
            {
                // console.log('Error:\n', err);
                reject(err);
            }
            else
            {
                if(stdout) console.info('Stdout:', stdout);
                if(stderr) console.error('Stderr', stderr);
                resolve([stdout, stderr]);
            }
        });
    });
}