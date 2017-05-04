# Javascript Setup

+ `sudo apt install nodejs` // to run javascript
+ `sudo apt install npm` // node.js package manager
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

-------

+ A good looking [express.js cheatsheet](https://github.com/azat-co/cheatsheets/tree/master/express4) that might be helpful
