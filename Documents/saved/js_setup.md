# Javascript Setup
_Last updated for Ubuntu 16.04 LTS, continued from [setups.md](./setups.md)_

+ `sudo ln -s /usr/bin/nodejs /usr/bin/node`
+ `umake ide visual-studio-code`
  + If Ubuntu 17.04:
     + cd `~/.local/share/umake/ide/visual-studio-code/bin` and `./code` to see any problems printed out on console log
       + If shows `error while loading shared libraries: libgconf-2.so.4: cannot open shared object file: No such file or directory` install the library: `sudo apt install libgconf-2-4`
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
