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
                /* Turn off next video autoplay */
                if
                (
                    document
                    .getElementById('autoplay-checkbox')
                    .checked
                )
                    document
                    .getElementById('autoplay-checkbox')
                    .click();

                /* Turn off annotations */
                if
                (
                    document
                    .getElementsByClassName('ytp-menuitem')[1]
                    .getAttribute('aria-checked')
                )
                    document
                    .getElementsByClassName('ytp-menuitem')[1]
                    .setAttribute('aria-checked', false);
            },
            3000
        )
    }
)();
