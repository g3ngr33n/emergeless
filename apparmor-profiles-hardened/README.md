# About

Apparmor profiles hardened written to work on Gentoo musl profile. The following are not specified in any of thoses profiles since not installed on the current system :

- systemd
- dbus 
- udev

Those apparmor profile are made to increase security in cost of breaking some functions/features.
 
## Firefox

- Firefox cannot browser or read most of system (default allow read /)
- Addon/Extension installation restricted (To install an extension, disable temporary apparmor)
- Downloads restricted
- Video/Sound and probably some other function in HTML5 should work fine
- Features as : Firefox friend / sync / Report crash / Data choices / Safebrowsing / Pocket... restricted

Consider to add the following hardening project for more security :

- Simple sandbox : https://wiki.gentoo.org/wiki/Simple_sandbox
- Firefox configuration hardening : https://github.com/pyllyukko/user.js/
- uMatrix : https://github.com/gorhill/uMatrix

** Firefox will not start if no profile are already available (.mozilla/firefox .cache/mozilla ...), run first firefox with apparmor disabled to create the basic directory / configuration file / cache... required.

## Torbrowser

- torbutton plugins and noscript are now working
- Similar restriction of the Firefox profile

Consider to set Safest level in the Security settings of the torbutton or set javascript.enabled to false in about:config

** Torbrowser will not start if no profile are already available (.mozilla/torbrowser .cache/mozilla ...), run first torbrowser with apparmor disabled to create the basic directory / configuration file / cache... required.

## Keepassx

- Network access disabled 
- Written for Qt5.x <
- All features are working

** Small issue, When you select Open database, the dialog will show your currrent directory / home as empty, simply enter in the input field "File name" your database name to open it.

## Copyright

Apparmor is under GNU/GPL v2 license
Official url : https://gitlab.com/apparmor/apparmor
