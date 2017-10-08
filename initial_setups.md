# Solus 3 initial setup info

+ Mouse and Touchpad > Touchpad section : natural scrolling : off
+ `sudo eopkg install vim git gnome-tweak-tool`
+ `sudo eopkg it -c system.devel` -- [source](https://solus-project.com/forums/viewtopic.php?t=591)
+ Software center > update, needs to be done first for software packages below to install properly
+ `sudo eopkg install vscode vlc kdenlive gimp simplescreenrecorder ufw guvcview gitg taskwarrior quiterss simple-scan hplip-drivers postgresql sqlite3 pandoc texlive-all`
+ `sudo ufw enable`
+ `git config --global core.editor "vim"`

+ privacy > usages and history > off

+ keyboard > go to the bottom "+" > command: `gnome-terminal &`, set shortcut : `ctrl + alt + t`
+ set another with with command: `gnome-screenshot -i &`, to shortcut: `ctrl + ;`

+ gnome-terminal > Edit > Preference > General > Uncheck show menubar
+ gnome-terminal > Edit > Propfile Preference
	+ General
		+ Uncheck Terminal Bell
		+ Profile settings
		+ Uncheck Use colors from system theme:
			+ Text color: #3F3F3F
			+ Bold color: #000000
			+ Background color: #F2F1F0
		+ Palette: Solarized
		+ Uncheck show scrollbar, Uncheck limit scrollback
		+ check to enable custom font, set font to Hack regular, font size: 18
		+ Column: 80, Row: 16
	+ Colors
		+ Uncheck transparency background
	+ Scrolling
		+ Uncheck show scrollbar
		+ Uncheck show scrollbar

+ bottom right open settings tab > click gear icon > font > set everything but window title to 14

+ gimp > Window > (CHECK) Single Window Mode

+ `gnome-tweak-tool &`
+ Typing > caps lock key behavior > Swap esc to caps lock
	+ restart to take effect for above
+ Tweak Tool > Windows > Focus Mode: Sloppy

+ Open visual studio code
	+ install code runner extension
	+ file preference > settings  and add these to the right inside {}:
	+ ```
	    "update.channel": "none",
	    "telemetry.enableCrashReporter": false,
	    "telemetry.enableTelemetry": false,
	    "window.zoomLevel": 2.7,
	    "editor.cursorBlinking": "solid"
	  ```

+ bottom right, click sound icon > sound settings > 
	+ Sound effect > turn off at altert volume
	+ input > turn off at input volume
+ bottom right, click on time > Preferences
	+ Uncheck 24 hour time
	+ check to show date
+ bottom right, click on bluetooth icon
	+ bluetoooth settings > turn off bluetooth on top
