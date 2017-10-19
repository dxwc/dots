# Solus 3 initial setup info

+ Mouse and Touchpad > Touchpad section : natural scrolling : off
+ `sudo eopkg install vim git gnome-tweak-tool --yes`
+ `sudo eopkg it -c system.devel --yes`
+ `sudo eopkg upgrade --yes`
+ `sudo eopkg install vscode vlc kdenlive gimp simplescreenrecorder ufw guvcview gitg taskwarrior quiterss simple-scan hplip-drivers postgresql sqlite3 mongodb pandoc texlive-all cdrtools --yes`
+ `sudo ufw enable`
+ `git config --global core.editor "vim"`

+ privacy > usages and history > off

+ keyboard > go to the bottom "+" > command: 
	+ `gnome-terminal` to `ctrl + alt + t`
	+ `gnome-screenshot -i` to `ctrl + ;`
	+ `nautilus --new-window` to `super + 2`
	+ `firefox` to `super + 1`

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

+ Setup printer
    1. Turn on printer
    2. Login to router settings page and note the IP of the printer (if still reserved, it's will be `192.168.0.105`)
    3. Menu > Printer Settings > Unlock > Add > Network printer > Find Network Printer > enter the IP address > Forward > Apply
+ `sudo vim /etc/profile` and add the line: `setxkbmap -option caps:swapescape`
+ `gnome-tweak-tool &`
	+ Windows > Window focus > Sloppy
+ Open visual studio code
	+ Install `Code Runner` and `Trailing Spaces` extension
	+ File > Preference > Settings  and add these to the right inside `{}`:
	+ ```
	    "update.channel": "none",
	    "telemetry.enableCrashReporter": false,
	    "telemetry.enableTelemetry": false,
	    "window.zoomLevel": 2.7,
	    "editor.cursorBlinking": "solid"
	    "editor.tabSize": 4,
	    "editor.insertSpaces": true,
	    "editor.detectIndentation": false
	  ```

+ bottom right, click sound icon > sound settings > 
	+ Sound effect > turn off at altert volume
	+ input > turn off at input volume
+ bottom right, click on time > Preferences
	+ Uncheck 24 hour time
	+ check to show date
+ bottom right, click on bluetooth icon
	+ bluetoooth settings > turn off bluetooth on top
