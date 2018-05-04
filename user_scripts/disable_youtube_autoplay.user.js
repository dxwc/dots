// ==UserScript==
// @description  Disable auto-playing of "up next" videos on youtube
// @include      https://www.youtube.com/watch?v=*
// @match        https://www.youtube.com/watch?v=*
// @grant        none
// @name         Disable youtube autoplay
// @namespace    dxwc
// @run-at       document-end
// @version      0.0.1
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
                    .getElementById('toggleBar')
                )
                    document
                    .getElementById('toggleBar')
                    .click();
                // TODO: turn off annotation
            },
            3000
        )
    }
)();
