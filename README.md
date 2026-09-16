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

[Google fonts](https://github.com/google/fonts), ~2000 fonts available, (`google-` prefixed)

# Installation

```
make install
```

You can also use your native package manager, see https://repology.org/project/fnt/versions
Meanwhile also Debian stable (Bullseye) has an official BPO.

# Usage

```
$ fnt update
Updating...

$ fnt info
Information...
Available Fonts: 2196

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

`while (clear); do fnt preview $(fnt search | shuf -n1) ; sleep 10; done`

If you want to install all available fonts from Debian, you could run something like this:

`while read -r font; do echo fnt install $font ; done < <(fnt search |grep -v "^google")`

You end up with ~2700 font files (~500 fonts), taking up 1.6 GB.

`for a in $(fnt search |grep "^google-"); do fnt install $a; done`

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

# Missing a font?

Feel free to create an issue, if the font comes with sources and its license is DFSG compliant, I'm happy to package it for a dollar. Free if I like it.

# Want to create or edit fonts?

https://trufont.github.io/

https://fontforge.org/en-US/

https://birdfont.org/

# Serve fonts on the web as woff2 and save a lot of traffic

https://github.com/google/woff2

# Advertisement

https://bits.debian.org/2021/12/2000-fonts-debian.html

https://news.ycombinator.com/item?id=26063971

https://fostips.com/fnt-a-command-line-font-manager-for-linux-and-mac-os/

https://www.basher.it/package/

https://terminaltrove.com/fnt/

# Some interesting links

[Helvetica in Motion](https://www.youtube.com/watch?v=R1ZBknDPlu4)

https://wakamaifondue.com

https://github.com/fcambus/bdf2sfd (convert bitmap fonts to vector fonts)

https://en.wikipedia.org/wiki/Computer_font

https://github.com/rewtnull/amigafonts (Amiga)

[https://www.trueschool.se](http://web.archive.org/web/20221003112339/https://trueschool.se/) (More Amiga)

https://github.com/alexmyczko/ree (dump your video card ROM, and extract the bitmap fonts)

[Paul Renner and his font Futura](https://www.maroverlag.de/typo/84-die-kunst-der-typographie-9783875124149.html)


## 🌐 Web Resources & Aesthetic Symbols Index
- [SYM 1F641](https://monochrome-text-lab-86.pages.dev/symbol/sym-1f641/)
- [HEARTS](https://pastel-manga-symbols-57.pages.dev/ja/hearts/)
- [SYM 1F60A](https://gothic-bio-fonts-13.pages.dev/symbol/sym-1f60a/)
- [KHANDA EMBLEM](https://cyberpunk-clan-tags-43.pages.dev/symbol/khanda-emblem/)
- [ANGEL WINGS HEART](https://cyberpunk-clan-tags-43.pages.dev/symbol/angel-wings-heart/)
- [SYM 1D479](https://anime-sparkle-text-22.pages.dev/symbol/sym-1d479/)
- [SYM 1D472](https://vintage-library-rune-80.pages.dev/symbol/sym-1d472/)
- [SYM 1F623](https://angelic-bow-symbols-42.pages.dev/symbol/sym-1f623/)
- [SYM 1F929](https://coquette-aesthetic-symbols-86.pages.dev/symbol/sym-1f929/)
- [SYM 26C4](https://vintage-angel-symbols-66.pages.dev/symbol/sym-26c4/)
- [SYM 2644](https://anime-sparkle-text-22.pages.dev/symbol/sym-2644/)
- [SYM 26AF](https://coquette-aesthetic-symbols-86.pages.dev/symbol/sym-26af/)
- [SYM 1D403](https://scholarly-cross-symbols-35.pages.dev/symbol/sym-1d403/)
- [SYM 267A](https://coquette-aesthetic-symbols-86.pages.dev/symbol/sym-267a/)
- [AESTHETIC MINIMAL CLOUD](https://kawaii-kaomoji-hub-96.pages.dev/symbol/aesthetic-minimal-cloud/)
- [PINWHEEL STAR](https://cyberpunk-clan-tags-43.pages.dev/symbol/pinwheel-star/)
- [SYM 1D47E](https://coquette-aesthetic-symbols-14.pages.dev/symbol/sym-1d47e/)
- [SYM 1FAE0](https://minimal-star-symbols-93.pages.dev/symbol/sym-1fae0/)
- [SYM 1D43E](https://nordic-minimal-fonts-67.pages.dev/symbol/sym-1d43e/)
- [SYM 2675](https://cyberpunk-clan-tags-43.pages.dev/symbol/sym-2675/)
- [SYM 1D433](https://gothic-bio-fonts-13.pages.dev/symbol/sym-1d433/)
- [FLORAL BRANCH BOUQUET](https://coquette-aesthetic-symbols-14.pages.dev/symbol/floral-branch-bouquet/)
- [SYM 2657](https://pearl-girly-fonts-86.pages.dev/symbol/sym-2657/)
- [SYM 1D455](https://angelic-bow-symbols-42.pages.dev/symbol/sym-1d455/)
- [SYM 26B7](https://coquette-aesthetic-symbols-14.pages.dev/symbol/sym-26b7/)
- [SYM 1D4A0](https://lace-heart-kaomoji-64.pages.dev/symbol/sym-1d4a0/)
- [SYM 2728](https://minimal-star-symbols-93.pages.dev/symbol/sym-2728/)
- [SYM 1D425](https://lace-heart-kaomoji-64.pages.dev/symbol/sym-1d425/)
- [ROBLOX NAMES](https://theeduplaycampen.pages.dev/ru/roblox-names/)
- [RIGHTWARDS PAIRED HARPOON](https://mecha-blade-symbols-46.pages.dev/symbol/rightwards-paired-harpoon/)
- [SYM 260D](https://cyberpunk-clan-tags-43.pages.dev/symbol/sym-260d/)
- [SYM 26AB](https://raven-gothic-kaomoji-25.pages.dev/symbol/sym-26ab/)
- [SEA STARFISH OCEAN](https://coquette-aesthetic-symbols-14.pages.dev/symbol/sea-starfish-ocean/)
- [FIRST QUARTER WAXING MOON](https://coquette-symbols.pages.dev/symbol/first-quarter-waxing-moon/)
- [CUPID FEATHERY ARROW](https://raven-gothic-kaomoji-25.pages.dev/symbol/cupid-feathery-arrow/)
- [WATER BUBBLES](https://angelic-bow-symbols-42.pages.dev/symbol/water-bubbles/)
- [SYM 1F639](https://anime-sparkle-text-22.pages.dev/symbol/sym-1f639/)
- [SYM 2748](https://lace-heart-kaomoji-64.pages.dev/symbol/sym-2748/)
- [FREEFIRE NAMES](https://angelic-bow-symbols-42.pages.dev/vi/freefire-names/)
- [ROTATED FLORAL HEART](https://raven-gothic-kaomoji-25.pages.dev/symbol/rotated-floral-heart/)
- [SYM 26F7](https://kawaii-kaomoji-hub-96.pages.dev/symbol/sym-26f7/)
- [SYM 2667](https://lace-heart-kaomoji-64.pages.dev/symbol/sym-2667/)
- [SYM 2635](https://lace-heart-kaomoji-64.pages.dev/symbol/sym-2635/)
- [SYM 1F62B](https://pastel-chibi-emotes-23.pages.dev/symbol/sym-1f62b/)
- [GEMINI ZODIAC TWINS](https://kawaii-kaomoji-hub-96.pages.dev/symbol/gemini-zodiac-twins/)
- [SYM 1D407](https://lace-heart-kaomoji-64.pages.dev/symbol/sym-1d407/)
- [SYM 1F910](https://raven-gothic-kaomoji-25.pages.dev/symbol/sym-1f910/)
- [SYM 2671](https://angelic-bow-symbols-42.pages.dev/symbol/sym-2671/)
- [INSTAGRAM BIO](https://coquette-symbols.pages.dev/es/instagram-bio/)
- [SYM 1D405](https://nordic-minimal-fonts-67.pages.dev/symbol/sym-1d405/)
- [SYM 1F610](https://cyberpunk-clan-tags-43.pages.dev/symbol/sym-1f610/)
- [LOVING HEART EYES KAOMOJI](https://gothic-bio-fonts-13.pages.dev/symbol/loving-heart-eyes-kaomoji/)
- [ARROWS LINES](https://theeduplaycampen.pages.dev/vi/arrows-lines/)
- [SYM 1F642 200D 2195 FE0F](https://gothic-bio-fonts-13.pages.dev/symbol/sym-1f642-200d-2195-fe0f/)
- [RIGHT WING CLAN FLARE](https://gothic-bio-fonts-13.pages.dev/symbol/right-wing-clan-flare/)
- [SYM 26EC](https://coquette-aesthetic-symbols-14.pages.dev/symbol/sym-26ec/)
- [SYM 1F61F](https://coquette-aesthetic-symbols-86.pages.dev/symbol/sym-1f61f/)
- [TRENDING](https://coquette-symbols.pages.dev/ru/trending/)
- [SYM 274B](https://lace-heart-kaomoji-64.pages.dev/symbol/sym-274b/)
- [SYM 1F4A9](https://minimal-star-symbols-93.pages.dev/symbol/sym-1f4a9/)
- [WARM HUG EMBRACE KAOMOJI](https://cyberpunk-clan-tags-43.pages.dev/symbol/warm-hug-embrace-kaomoji/)
- [SAGITTARIUS ZODIAC ARCHER](https://gothic-bio-fonts-13.pages.dev/symbol/sagittarius-zodiac-archer/)
- [HEAVY RIGHTWARD ARROW](https://cyberpunk-clan-tags-43.pages.dev/symbol/heavy-rightward-arrow/)
- [SYM 1D48A](https://pastel-chibi-emotes-23.pages.dev/symbol/sym-1d48a/)
- [FREEFIRE NAMES](https://kawaii-kaomoji-hub-96.pages.dev/ja/freefire-names/)
- [LEFT MATHEMATICAL WHITE SQUARE BRACKET](https://theeduplaycampen.pages.dev/symbol/left-mathematical-white-square-bracket/)
- [SIX POINTED BLACK STAR](https://gothic-bio-fonts-13.pages.dev/symbol/six-pointed-black-star/)
- [SYM 2614](https://anime-sparkle-text-22.pages.dev/symbol/sym-2614/)
- [SYM 26AB](https://lace-heart-kaomoji-64.pages.dev/symbol/sym-26ab/)
- [SYM 26B0](https://lace-heart-kaomoji-64.pages.dev/symbol/sym-26b0/)
- [SWIMMING FISH RIGHT](https://coquette-aesthetic-symbols-14.pages.dev/symbol/swimming-fish-right/)
- [SYM 2673](https://lace-heart-kaomoji-64.pages.dev/symbol/sym-2673/)
- [SPRING TULIP BLOSSOM](https://coquette-aesthetic-symbols-86.pages.dev/symbol/spring-tulip-blossom/)
- [HEARTS](https://raven-gothic-kaomoji-25.pages.dev/hearts/)
- [ARROWS LINES](https://scholarly-cross-symbols-35.pages.dev/ru/arrows-lines/)
- [LEO ZODIAC LION](https://theeduplaycampen.pages.dev/symbol/leo-zodiac-lion/)
- [SYM 1F479](https://minimal-star-symbols-93.pages.dev/symbol/sym-1f479/)
- [FLOWER GIRL SMILE KAOMOJI](https://coquette-aesthetic-symbols-86.pages.dev/symbol/flower-girl-smile-kaomoji/)
- [BLUSHING SOFT SMILE KAOMOJI](https://gothic-bio-fonts-13.pages.dev/symbol/blushing-soft-smile-kaomoji/)
- [ROBLOX NAMES](https://vintage-library-rune-80.pages.dev/ja/roblox-names/)
- [SYM 1D406](https://minimal-star-symbols-93.pages.dev/symbol/sym-1d406/)
- [SYM 1F620](https://raven-gothic-kaomoji-25.pages.dev/symbol/sym-1f620/)
- [BORDERS DIVIDERS](https://theeduplaycampen.pages.dev/vi/borders-dividers/)
- [SYM 1D466](https://nordic-minimal-fonts-67.pages.dev/symbol/sym-1d466/)
- [SYM 1D482](https://nordic-minimal-fonts-67.pages.dev/symbol/sym-1d482/)
- [SYM 1F971](https://cyberpunk-clan-tags-43.pages.dev/symbol/sym-1f971/)
- [SAGITTARIUS ZODIAC ARCHER](https://anime-sparkle-text-22.pages.dev/symbol/sagittarius-zodiac-archer/)
- [SYM 1D40D](https://nordic-minimal-fonts-67.pages.dev/symbol/sym-1d40d/)
- [SYM 1F624](https://cyberpunk-clan-tags-43.pages.dev/symbol/sym-1f624/)
- [SYM 26BF](https://coquette-aesthetic-symbols-86.pages.dev/symbol/sym-26bf/)
- [SYM 1F92C](https://minimal-star-symbols-93.pages.dev/symbol/sym-1f92c/)
- [SYM 1D477](https://nordic-minimal-fonts-67.pages.dev/symbol/sym-1d477/)
- [SYM 1F618](https://coquette-symbols.pages.dev/symbol/sym-1f618/)
- [DAGGER CROSS SYMBOL](https://pearl-girly-fonts-86.pages.dev/symbol/dagger-cross-symbol/)
- [SYM 1F921](https://cyberpunk-clan-tags-43.pages.dev/symbol/sym-1f921/)
- [OPEN CENTRE STAR](https://kawaii-kaomoji-hub-96.pages.dev/symbol/open-centre-star/)
- [SYM 2732](https://angelic-bow-symbols-42.pages.dev/symbol/sym-2732/)
- [NATURE FLOWERS](https://mecha-blade-symbols-46.pages.dev/ja/nature-flowers/)
- [FLORAL HEART VINE](https://mecha-blade-symbols-46.pages.dev/symbol/floral-heart-vine/)
- [SYM 2688](https://mecha-blade-symbols-46.pages.dev/symbol/sym-2688/)
- [LEFT POINTING DOUBLE ANGLE QUOTATION](https://coquette-aesthetic-symbols-86.pages.dev/symbol/left-pointing-double-angle-quotation/)
- [SYM 2663](https://coquette-aesthetic-symbols-14.pages.dev/symbol/sym-2663/)
- [SYM 26DB](https://coquette-aesthetic-symbols-86.pages.dev/symbol/sym-26db/)
- [CANCER ZODIAC CRAB](https://nordic-minimal-fonts-67.pages.dev/symbol/cancer-zodiac-crab/)
- [SYM 1D411](https://nordic-minimal-fonts-67.pages.dev/symbol/sym-1d411/)
- [SYM 1F642 200D 2194 FE0F](https://cyberpunk-clan-tags-43.pages.dev/symbol/sym-1f642-200d-2194-fe0f/)
- [INSTAGRAM BIO](https://coquette-symbols.pages.dev/pt/instagram-bio/)
- [TIBETAN LOTUS BLOSSOM](https://cyberpunk-clan-tags-43.pages.dev/symbol/tibetan-lotus-blossom/)
- [SYM 1F912](https://angelic-bow-symbols-42.pages.dev/symbol/sym-1f912/)
- [SYM 1D46A](https://nordic-minimal-fonts-67.pages.dev/symbol/sym-1d46a/)
- [SYM 1D47C](https://pastel-chibi-emotes-23.pages.dev/symbol/sym-1d47c/)
- [HEAVY STAR](https://cyberpunk-clan-tags-43.pages.dev/symbol/heavy-star/)
- [SYM 26AF](https://cyberpunk-clan-tags-43.pages.dev/symbol/sym-26af/)
- [SYM 1D40B](https://pearl-girly-fonts-86.pages.dev/symbol/sym-1d40b/)
- [SYM 26A2](https://vintage-library-rune-80.pages.dev/symbol/sym-26a2/)
- [HIGH VOLTAGE LIGHTNING](https://angelic-bow-symbols-42.pages.dev/symbol/high-voltage-lightning/)
- [SYM 2614](https://coquette-aesthetic-symbols-14.pages.dev/symbol/sym-2614/)
- [SYM 26FD](https://clean-dot-aesthetic-48.pages.dev/symbol/sym-26fd/)
- [CURVED HEART BLOOMY](https://vintage-library-rune-80.pages.dev/symbol/curved-heart-bloomy/)
- [SYM 2657](https://coquette-aesthetic-symbols-86.pages.dev/symbol/sym-2657/)
- [RIGHT HEAVY BRACKET BOX](https://gothic-bio-fonts-13.pages.dev/symbol/right-heavy-bracket-box/)
- [SYM 1F47A](https://minimal-star-symbols-93.pages.dev/symbol/sym-1f47a/)
- [SYM 1F4A9](https://sleek-line-symbols-51.pages.dev/symbol/sym-1f4a9/)
- [TIKTOK CAPTIONS](https://kawaii-kaomoji-hub-96.pages.dev/vi/tiktok-captions/)
- [SYM 2745](https://pastel-chibi-emotes-23.pages.dev/symbol/sym-2745/)
- [SYM 1F495](https://minimal-star-symbols-93.pages.dev/symbol/sym-1f495/)
- [STAR OPERATOR](https://neon-glitch-symbols-84.pages.dev/symbol/star-operator/)
- [SYM 1F60A](https://pearl-girly-fonts-86.pages.dev/symbol/sym-1f60a/)
- [SYM 26F9](https://theeduplaycampen.pages.dev/symbol/sym-26f9/)
- [TRENDING](https://ribbon-heart-fonts-86.pages.dev/pt/trending/)
