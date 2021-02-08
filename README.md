# fnt
apt for fonts, the missing font manager for macOS/linux

# Why?

If you run [Debian](https://www.debian.org) stable, you don't get the latest fonts, unless someone backports them actively. So this is useful to just get the latest and greates fonts from Debian sid. It gets even worse with non Debian based Linux distributions.

If you run [macOS](https://www.next.com), neither [fink](https://www.finkproject.org), [brew](https://brew.sh), nor [macports](https://www.macports.org) come with a great list of available to install fonts.

# Installation

\# cp fnt /usr/bin

# Usage

```
fnt update
fnt search agave
fnt preview agave
fnt install agave
fnt list
```

# Thanks

The preview mode works using https://github.com/hpjansson/chafa and https://screenshots.debian.net

# Missing a font?

Feel free to create an issue, if the font comes with sources and its license is DFSG compliant, I'm happy to package it for a dollar. Free if I like it.

# TODO

Get [ReactOS](https://reactos.org) with bash, and make `fnt` work there.
