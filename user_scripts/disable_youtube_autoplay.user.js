// ==UserScript==
// @description Disable auto-playing of "up next" videos on youtube
// @match       https://www.youtube.com/watch?v=*
// @match       http://www.youtube.com/watch?v=*
// @grant       none
// @name        Disable youtube autoplay
// @namespace   dxwc
// @run-at      document-end
// @version     0.0.1
// ==/UserScript==

if(document.getElementById('autoplay-checkbox').checked)
{
    document.getElementById('autoplay-checkbox').click();
}
