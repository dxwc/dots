# Javascript Setup

+ `sudo apt-get install nodejs` // to run javascript
+ `sudo apt-get install npm` // node.js package manager
+ `sudo ln -s /usr/bin/nodejs /usr/bin/node`
+ `umake ide visual-studio-code`
  + From left click on the extension icon, clear and search and install "[Code Runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)"
  + File > Preferences > Settings and add:
    + `"update.channel": "none",`
    + `"telemetry.enableCrashReporter": false,`
    + `"telemetry.enableTelemetry": false,`
    + `"window.zoomLevel": 3,`
    + `"editor.cursorBlinking": "solid"`
  + `Alt + Ctrl + j` (+ many need to select or type run) to run
  + `Alt + Ctrl + m` to stop running
  + or see latest instruction from the link
+ `sudo npm -g install nodemon` -- helps automatically restart server on change
+ `sudo npm -g install express`
+ `sudo apt install node-express-generator`
  + To generate a express app: create and go into a folder and run `express`
  + [link to a good tutorial](https://youtu.be/Q1jAw44_E8c?list=PLGquJ_T_JBMTpKQptCmBDM9HcYrptCV0Z)]
  + Install dependencies specified in package.json folder:
    + `cd . && npm install`
+ package.json should contain a start property, which will call ./bin/www which contains code to listen on port 3000
  + `npm start` to start up the server
  
Another method:

+ Setting up a server:
  + Create and cd into a directory
  + run `npm init` to generate a package.json file interactively
  + `sudo npm install --save express` -- will add approrpriate things in package.json and save appropraite node modules
  + To start server: `node index.js` -- or whatever file is written to as specified as entry point in the package.json file (after having written to it). Example test code:

        var express = require('express');
        var app = express();
        var port = 2000;
        app.listen(
            port,
            function(err, response) // callback function
            {
                if(err)
                { console.log('server error!'); }
                else
                { console.log('server started at port', port); }
            }
            );
        
  + Another method to run after instlaling nodemon is `nodemon index.js`, this automatically restarts server on file change (so don't need to worry about restarting on change, just reloading the webpage will do for debugging)
  
Learning the basics of deplyments
<strike>
  + Heroku gives a free aaccount to try out things
  + <https://devcenter.heroku.com/articles/getting-started-with-nodejs#introduction>
  + See here for installation instruction: <https://devcenter.heroku.com/articles/getting-started-with-nodejs#set-up>
  + As of now it is:
    + `sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"`
    + `curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add - `
    + `sudo apt-get update`
    + `sudo apt-get install heroku`
  + After that cd into app directory, have a `Package.json` (`npm init` to generate as needed) there:
    + On code, make sure to use their port from env: <http://stackoverflow.com/a/7503665>
    + T he Package.json will need these added: `"scripts": { "start": "node server.js" }`
    + `heroku login`
    + `heroku create` (if first time, do these before create: `git init`, `git config...` `git add/commit....`)
      + The create function will add the remote to git (can be viewed by `git remote -v`)
    + `git push heroku master` deploys
    + Ensure running: `heroku ps:scale web=1`
    + view `heroku open`
</strike>

-------

+ A good looking [express.js cheatsheet](https://github.com/azat-co/cheatsheets/tree/master/express4) that might be helpful
