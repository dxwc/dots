# Solus 3, initial setup info

+ `cd /tmp/; wget https://raw.githubusercontent.com/dxwc/dots/master/scripts/initial_setup.bash; bash initial_setup.bash`
+ `cd /tmp/; wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts; sudo -E vim -p /etc/hosts /tmp/hosts` and copy paste and save after the up sections
+ Search for "budgie desktop settings", under "Autostart", add command:
    + Add command: `setxkbmap -option caps:swapescape`
+ Mouse and Touchpad > Touchpad section : natural scrolling : on
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
+ Firefox `about:config` set
    + `browser.showQuitWarning` to true
    + `toolkit.cosmeticAnimations.enabled` to false
    + `privacy.resistFingerprinting` to true
    + `privacy.resistFingerprinting.autoDeclineNoUserInputCanvasPrompts` to true
    + other about conig setttings to set and explanation [here](https://www.privacytools.io/#about_config)
    + `about:healthreport` top right, turn off sharing info
+ Setup printer
    1. Turn on printer
    2. Login to router settings page and note the IP of the printer (if still reserved, it's will be `192.168.0.105`)
    3. Menu > Printer Settings > Unlock > Add > Network printer > Find Network Printer > enter the IP address > Forward > Apply
+ `gnome-tweak-tool &`
	+ Windows > Window focus > Sloppy
+ bottom right, click sound icon > sound settings > 
	+ Sound effect > turn off at altert volume
	+ input > turn off at input volume
+ bottom right, click on time > Preferences
	+ Uncheck 24 hour time
	+ check to show date
+ bottom right, click on bluetooth icon
	+ bluetoooth settings > turn off bluetooth on top
+ Search for calendar
    + Top right: weather
        + automatic location: off
        + show weather: off
+ bottom right > settings > bottom panel > Setting
    + automatic hide: intelligent
    + transparency: dynamic
    + size: 40
+ `cd ~; git clone https://github.com/dxwc/dots` and place files where
  needed
    + `sudo cp $HOME/.vimrc /root/`
+ Turn off wifi if connected, and then find out the interface name by
  running `ifconfig`, use that info to change mac address like so:
    + `sudo ifconfig wlp1s0 down`
    + `sudo macchanger -a wlp1s0`
    + `sudo ifconfig wlp1s0 up`
    + Verify by running: `macchanger -s wlp1s0`
    + Reconnect to wifi
+ Open visual studio code
	+ Install `Code Runner` and `Trailing Spaces` extension
	+ File > Preference > Settings  and add these to the right inside `{}`:
	+ ```
	    "update.channel": "none",
	    "telemetry.enableCrashReporter": false,
	    "telemetry.enableTelemetry": false,
	    "window.zoomLevel": 2.7,
	    "editor.cursorBlinking": "solid",
	    "editor.tabSize": 4,
	    "editor.insertSpaces": true,
	    "editor.detectIndentation": false
	  ```
+ Restart
+ Download:
    + <https://download.kiwix.org/release/kiwix-tools/>
    + <http://download.kiwix.org/zim/>
        + wikipedia
        + archlinux
        + gardening
        + installgentoo
        + superuser
        + wikem
        + wikispecies
        + woodworking
    + Usages example :
        + `./kiwix-serve *.zim --port 9001` or, individualy :
        + `./kiwix-serve ./wikem_en_all_2018-10.zim --port 9001` 

