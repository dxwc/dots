# My initial setups after a fresh install of Ubuntu
_Last updated for Ubuntu 16.04 LTS_

## Clone
+ Clone this repo, place common config files

## Update, Common installs
+ `sudo apt update`
+ `sudo apt install git gitk vim unity-tweak-tool gnome-tweak-tool secure-delete gimp pandoc exuberant-ctags tree`
+ `sudo apt get upgrade`
+ To view this file locally as html, run:
	+ `pandoc thisFileName.md > /tmp/a_temp.html && firefox /tmp/a_temp.html`

## Set vim as the default git-commit editor
+ `git config --global core.editor "vim"`

## Swap ESC with Caps lock
Tweak Tool > Typing > Caps Lock Key behavior and select "Swap ESC and Caps Lock"

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
	+ Custom font "Hack Regular" 20
		+ <https://github.com/chrissimpkins/Hack>
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
