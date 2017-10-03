# Solus 3 initial setup info

+ Mouse and Touchpad > Touchpad section : natural scrolling : off
+ `sudo eopkg install vim git gnome-tweak-tool`
+ `sudo eopkg it -c system.devel` -- [source](https://solus-project.com/forums/viewtopic.php?t=591)
+ `sudo eopkg install pandoc texlive-all vlc kdenlive gimp simplescreenrecorder ufw vscode guvcview gitg taskwarrior quiterss simple-scan hplip-drivers`
+ `sudo ufw enable`
+ `git config --global core.editor "vim"`

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
		+ Column: 139, Row: 29
	+ Colors
		+ Uncheck transparency background
	+ Scrolling
		+ Uncheck show scrollbar
		+ Uncheck show scrollbar

+ bottom right open settings tab > click gear icon > font > set everything but window title to 14

+ software center, search: gimp > install, search

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
+ Software center > update


---------------------
---------------------

### Past archieve :

---------------------
---------------------





# My initial setups after a fresh install of Ubuntu
_Last updated for Ubuntu 16.04 LTS_

## Clone
+ Clone this repo, place common config files

## Update, Common installs
+ `sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make`
+ `sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder`
+ `sudo apt update`
+ `sudo apt install git gitk vim unity-tweak-tool gnome-tweak-tool secure-delete gimp pandoc exuberant-ctags tree fonts-hack-ttf ubuntu-make texlive-latex-base texlive-fonts-recommended texlive-latex-recommended vlc simplescreenrecorder nodejs npm libqt4-dev libcurl4-gnutls-dev`
+ [Javascript setup](https://github.com/dxwc/setups/blob/deac75c0e83e2c3165b37e118461aabf6b2fcf05/Documents/saved/js_setup.md)
+ `sudo apt get upgrade`
	+ Better to do this after setting everything up from below
	+ Restart after this
+ To view this file locally as html, run:
	+ `pandoc thisFileName.md > /tmp/a_temp.html && firefox /tmp/a_temp.html`

## Set vim as the default git-commit editor
+ `git config --global core.editor "vim"`

## Swap ESC with Caps lock
Tweak Tool > Typing > Caps Lock Key behavior and select "Swap ESC and Caps Lock"

## Sound
Icon on top right > Sound setting > Check allow louder than 100%    
Input > mute

## General font size
Tweak Tool > Fonts > Set everything to 14 at default Ubuntu font

## Focus mode
Tweak Tool > Windows > Focus Mode: Sloppy

## Autohide launcher, Panel Opaque, Date format
+ Unity Tweak Tool > Launcher > Autohide: on
+ Unity Tweak Tool > Panel > Opaque panel for maximized: check, datetime 12 hours
+ Unity Tweak Tool > Web Apps > Disable everything
+ On panel, select and click options on date to add Date also
+ On panel, select and click options on language option to hide indicator

## Setup terminal
+ System Settings > Keyboard ; Uncheck "Cursor Blinks in text fields"
+ Profile settings
	+ Uncheck terminal bell
	+ Custom font "[Hack Regular](https://github.com/chrissimpkins/Hack)" 20
	+ Uncheck Use colors from system theme:
		+ Text color: #3F3F3F
		+ Bold color: #000000
		+ Background color: #F2F1F0
	+ Palette: Solarized
	+ Uncheck show scrollbar, Uncheck limit scrollback

## Gimp setup
Window > (CHECK) Single Window Mode

## Github ssh setup
+ <https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/>
+ <https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/>
+ <https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/>
+ After git cloning this repo, and placing them in appropriate locations,
add/change github remote for ssh, use the auto script from ~/scripts/ to
schedule auto-update commits (have to commit the first time and add all that of
which to be committed when updated)

## Ubuntu startup
Uncheck both at fresh install

## Enable Workspace and fix
+ System settings > Appearance > Behavior > Enable Workspaces
	+ Mouse & Touchpad > Check (tap to click, two finger scroll, natural scrolling)
	+ Security and Privacy > File and Application > Off and Uncheck all
	+ Search (off)
	+ Diagnostics: Disable/Uncheck sendings
