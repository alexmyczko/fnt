```
   .d888
  d88P"           888
  888             888
.d88888 88888b. d888888
  888   888 "88b  888
  888   888  888  888
  888   888  888  Y88b.
  888   888  888   "Y888
```

apt for fonts, the missing font manager for macOS/linux

[![Packaging status](https://repology.org/badge/tiny-repos/fnt.svg)](https://repology.org/project/fnt/versions)

# Why?

If you run [Debian](https://www.debian.org) stable, you don't get the latest fonts, unless someone backports them actively. So this is useful to just get the latest and greatest fonts from Debian sid. It gets even worse with non Debian based Linux distributions.

If you run [macOS](https://www.next.com), neither [fink](https://www.finkproject.org), [brew](https://brew.sh), nor [macports](https://www.macports.org) come with a great list of available to install fonts.

# Privacy?

Read more about [Google Fonts](https://uxdesign.cc/a-privacy-concern-about-google-fonts-5aa4418bf87e) and [their FAQ](https://developers.google.com/fonts/faq#what_does_using_the_google_fonts_api_mean_for_the_privacy_of_my_users).

Host them [yourself](https://wicki.io/posts/2020-11-goodbye-google-fonts/).

# Font repositories

[Debian sid](https://packages.debian.org/unstable/fonts/), ~500 fonts available, only those starting with `fonts-`

[Google fonts](https://github.com/google/fonts), ~1600 fonts available, (`google-` prefixed)

# Installation

```
make install
```

You can also use your native package manager, see https://repology.org/project/fnt/versions
Meanwhile also Debian stable (Bullseye) has an official BPO.

# Usage

```
$ fnt update

$ fnt search agave

$ fnt preview agave
╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴▗▄▖╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴▟▇▉▏╴▗▆▆▆▖╴╺▆▆▅▖▐▆▖▗▆▍▁▅▇▆▅╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▗▇▌▇▙╴▜▉▁▇▋╴▃▅▅▇▌╴▜▊▟▉╴▐▇▅▟▉▏╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▟▛▀▜▉▖▔▀▀▇▋▕▜▙▃▇▍╴▝▇▉▍╴▝▜▙▃▖╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▔▔╴╴▔▔▕▅▆▛▘╴╴▔▔▔╴╴╴▔▔╴╴╴╴▔▔▔╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴╴▁▁╴╴╴╴╴╴╴╴╴╴╴╴╴╴▁▁▁▁╴╴╴╴╴╴╴╴╴╴╴╴╴▁▁▁▁╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴▐▇▉╴╴▕▃▃▃▁╴╴╴╴╴╴▕▇▛▀▀▏╴▂▄▃▁╴╴╴╴╴╴╴▇▛▀▇▌╴▃▃▃▂╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▕▇▛▇▌╴╴▔▂▇▋╴╴╴╴╴╴▕▇▇▆▅╴▐▇▍▜▉▏╴╴╴╴╴╴▇▉▆▉▘▕▇▍▀▛▏╴╴╴╴╴╴╴╴╴╵╵╵╵╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▐▉▆▇▉╴▇▉▀▇▋╴╴╴╴╴╴▕▇▌╴╴╴▐▇▛▀▀╴╴╴╴╴╴╴▇▋▐▉▖▕▇▍╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╵╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▀▘╴▕▀▘▝▀▀▀▘╴╴╴╴╴╴▕▀▀▀▀▏╴▀▀▀▘╴╴╴╴╴╴╴▀▘╴▀▘▕▀▘╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╵╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╶╴╴╴╵╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴▁▁╴╴╴╴╴╴╴╴╴╴╴╵╴╴╴╶╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▐▇▇▆▖╴▇▊▁╴╴╴╴╴╴╴╴╴▄▆▇▇▏╴╴▁▁╴╴╴╴╴╴╴╴┡▇▇▇▏╴╴▕▀▀╴╴╴╴╴╴╴╴╴╴╶╴╴╴╴╴╵╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▐▉▃▇▛╴▟▉▀▇▌╴╴╴╴╴╴▐▇▘▃▃▖▗▇▛▜▉╴╴╴╴╴╴╴╴╴▐▇▏╴╇▇▇▊╴╴╴╴╴╴╴╴╴╴╷╷╷╷╴╴╶╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▐▉▔▜▇▏▟▊╴▇▊╴╴╴╴╴╴▐▇▎▐▇▍▐▇▄▟▉╴╴╴╴╴╴╴╴╴▐▉▏╴╴╴▇▊╴╴╴╴╴╴╴╴╴╶╴╴╴╴╴╴╴╵╴╴╴╴╴╴╴╴╴
╴╴╴╴▐▉▆▇▀╴▜▉▆▛▘╴╴╴╴╴╴╴▜▇▇▛▘╴╴▔▟▉╴╴╴╴╴╴╴▆▆▛▀╴╴╴▁▇▊╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴▀▀▀▘╴╴╴╴╴╴╴╴╴╴╴╴▕▜▀▀▔╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▐▇╴▐▇╴▅▇▇▆▖╴╺▇▇▆▖▐▇▇▆▇▖▕▆▇▇▅╴╴╴╴╴╴╴╴╴╴╴╴╴┡▇▆▆▏╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▐▉╴▐▉╴▟▊╴▇▋╴▄▅▅▇▌▐▋▟▋▟▌▐▇▅▟▉▏╴╴╴╴╴╴▝▛▛▛▏╴▄▅▟▇▎╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴▐▇▄▟▉╴▟▊╴▇▋▕▜▙▄▇▍▐▋▟▋▟▌▝▜▙▄▖╴╴╴╴╴╴╴╴╴╴╴╴▕▇▙▟▉▎╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴▔▔▔╴╴▔▔╴▔▔╴╴▔▔▔╴▔▔▔▔▔▔╴╴▔▔▔╴╴╴╴╴╴╴╴╴╴╴╴╴╴▔▔▔╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▛▃▇
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▛▋▇
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▛╏▇
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▆▇
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▉▛▀▀▉
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▉▏╴▕▇
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▆▆▇
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
▇▇▇▇▛▁▖▔▜▛▔╴▇▉▔▗╴▐▉▃▃▔▜▇▛▘╶▇▍╴▃▃▇▉▘▁▟▊▃▃╴▕▛▔▃▏▜▛▔▃▔▜▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
▇▇▇▇▏▔▔╴▐▆▋╴▇▇▉▀╴▟▇▋▁╴▐▛▏▖╶▇▍▂▔▀▜▘▁▁▀▇▇▛╴▟▉╸▔╴▐▙▁▀╴▟▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
▇▇▇▇▖▝▘▁▟▇▋╴▇▉▘╶┻▜▉▀▀╴▐▄▃▖╴▟▛▀▘▁▟▖▝▘▁▇▛╴▐▇▌╴▀▏▐▇▛╴▟▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
▇▇▇▇▇▇▆▇▇▇▇▇▇▇▇▇▇▇▇▆▇▇▇▇▇▇▇▇▇▆▇▇▇▇▆▆▇▇▇▇▇▇▇▇▆▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇

$ fnt install agave

$ fnt list
agave-b-autohinted.ttf [699]
agave-r-autohinted.ttf [2443]
```

Randomly display a preview every ten seconds:

`while (clear); do fnt preview $(fnt search | shuf -n1 | sed "s,google-,,;s,fonts-,,"); sleep 10; done`

If you want to install all available fonts, you could run something like this:

`for a in $(fnt search |grep ^fonts- |sed s,fonts-,,); do fnt install $a; done`

You end up with ~2700 font files (~500 fonts), taking up 1.6 GB.

`for a in $(fnt search |grep ^google- |sed s,google-,,); do fnt install $a; done`

You end up with ~4200 font files (~1600 fonts), taking up 1.4 GB.

# ZSH autocompletion

You might want to add something like this to your `.zshrc`:
```
# enable autocomplete function
autoload -U compinit
compinit
```

# Thanks

The preview mode works using https://github.com/hpjansson/chafa and https://screenshots.debian.net

# Screenshots

Create your own with http://shell.aiei.ch/typography/

# Online service

http://sid.ethz.ch/fonts/

# Missing a font?

Feel free to create an issue, if the font comes with sources and its license is DFSG compliant, I'm happy to package it for a dollar. Free if I like it.

# Want to create or edit fonts?

https://trufont.github.io/

https://fontforge.org/en-US/

https://birdfont.org/

# But you know this Comic Sans font?

[https://web.archive.org/web/20230119134258/http://www.comicsanscriminal.com/](http://www.comicsanscriminal.com/) Kindly, go fuck yourself.

# Serve fonts on the web as woff2 and save a lot of traffic

https://github.com/google/woff2

# Advertisement

https://bits.debian.org/2021/12/2000-fonts-debian.html

https://news.ycombinator.com/item?id=26063971

https://fostips.com/fnt-a-command-line-font-manager-for-linux-and-mac-os/

https://www.basher.it/package/

# Some interesting links

[Helvetica in Motion](https://www.youtube.com/watch?v=R1ZBknDPlu4)

https://wakamaifondue.com

https://github.com/fcambus/bdf2sfd (convert bitmap fonts to vector fonts)

https://en.wikipedia.org/wiki/Computer_font

https://github.com/rewtnull/amigafonts (Amiga)

[https://www.trueschool.se](http://web.archive.org/web/20221003112339/https://trueschool.se/) (More Amiga)

https://github.com/alexmyczko/ree (dump your video card ROM, and extract the bitmap fonts)

[Paul Renner and his font Futura](https://www.maroverlag.de/typo/84-die-kunst-der-typographie-9783875124149.html)
