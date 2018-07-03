# About

Apparmor profiles hardened written to work on Gentoo musl. Keep in mind that 

- systemd
- dbus 
- udev
- gtk+:3 

are not specified in any of thoses profiles since not installed on the current system.
 
## Firefox

- Firefox cannot browse any directory of the system
- Addon/Extension installation restricted (in order to add an extension, download the xpi and add a apparmor rules to allow read on it and input the path of the extension in the url bar of Firefox)
- Downloads restricted
- Video/Sound and probably some other function in HTML5 restricted
- Work with Firejail sandbox (do not enable --apparmor option of Firejail)
- Firefox friend sync / Report crash / Data choices / Safebrowsing are restricted

**Firefox will not start if no profile mozilla are available (.mozilla/firefox .cache/mozilla ...), run first firefox with apparmor disabled to create the basic directory / configuration file / cache... required.

## Torbrowser

- torbrowser-launcher extension is not in scope

**Doesn't work with firejail sandbox

## Copyright

Apparmor is under GNU/GPL v2 license
Official url : https://gitlab.com/apparmor/apparmor
