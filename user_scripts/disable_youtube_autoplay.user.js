// ==UserScript==
// @description  Disable auto-playing of "up next" videos on youtube
// @include      https://www.youtube.com/watch?v=*
// @match        https://www.youtube.com/watch?v=*
// @grant        none
// @name         Disable youtube autoplay
// @namespace    dxwc
// @run-at       document-end
// @version      0.0.1
// ==/UserScript==

(
    () =>
    {
        setTimeout
        (
            () =>
            {
                if(document.getElementById('autoplay-checkbox').checked)
                    document.getElementById('autoplay-checkbox').click();
            },
            3000
        )
    }
)();
