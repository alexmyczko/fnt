#!/bin/sh
set -e
#set -x
# Script to keep mirror updated and generate deb822-style indexes
# All in the name of 'fnt'
#
# I should be placed/run in the parent folder of the mirror (fonts-main).
#
# shellcheck disable=SC1007
DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd); cd "${DIR:?}"
#SCRIPT=$(basename "$0"); # echo "$DIR/$SCRIPT"
# Source if not already a git directory
SOURCE='https://github.com/google/fonts/archive/refs/heads/main.tar.gz'
# Fucking download doesn't support timestamps..
# Shouldn't that be a git repo instead of downloading it every day?!
# mv fonts-main{.old};
# git clone https://github.com/google/fonts --single-branch fonts-main
#
if ! git -C "$DIR"/fonts-main pull --force --quiet; then
  if ! git clone https://github.com/google/fonts --single-branch fonts-main; then
    # Doesn't seem to be a git dir..
    TMPD=$(mktemp -d)
    rm -Rfv fonts-main
    if ! wget -P "$TMPD/" --quiet --no-clobber $SOURCE; then
      echo "$DIR/$0 made a booboo.. /ó\\"
      exit 1
    else
      #find "$DIR" -maxdepth 1 -type f -iname 'main.tar.gz.*' -ctime +0 -delete
      #mv fonts-main fonts-main.bak
      tar xf "$TMPD/${SOURCE##*/}"
      #mv main.tar.gz main."$(date -I)".tar.gz
      #rm -Rf fonts-main.bak
    fi
  fi
else
  git -C "$DIR"/fonts-main log -1 --date=format:"%Y/%m/%d %T" --format="%ad" > REFDATE
fi
# Generate indexes
for FOLDER in ofl apache; do
  # shellcheck disable=SC2018,SC2019
  INDEX="$(echo "$FOLDER" |tr 'a-z' 'A-Z')"
  for FONTPATH in fonts-main/"$FOLDER"/*; do
    {
      printf 'Package: %s\nDirectory: %s\nFiles:\n' "$(basename "$FONTPATH")" "$FONTPATH"
      for FONTFILE in "$FONTPATH"/*.?tf; do
        printf ' %s\n' "$(md5sum "$FONTFILE" |sed -n 's/^\(.*\) .*\/\(.*tf$\)/\1 \2/p')"
      done
      printf '\n'
    } >> "$INDEX"
  done
  xz -f "$INDEX"
done
# Sign the INDEX.xz's?
# vim: ft=sh ts=2 sts=2 sw=2 et

