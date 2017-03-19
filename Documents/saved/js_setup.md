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
    + `"window.zoomLevel": 3`
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
