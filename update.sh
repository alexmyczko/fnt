#!/bin/sh
#set -e
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
GMIRROR="https://github.com/google/fonts/raw/refs/heads/main"
# Fucking download doesn't support timestamps..
# Shouldn't that be a git repo instead of downloading it every day?!
# mv fonts-main{.old};
# git clone https://github.com/google/fonts --single-branch fonts-main
#
if ! git -C "$DIR"/fonts-main pull --force --quiet; then
  if ! git clone --depth 1 https://github.com/google/fonts --single-branch fonts-main; then
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
      printf 'Package: %s\nURL: %s\nFiles:\n' \
        "$(basename "$FONTPATH")" "$GMIRROR/${FONTPATH##fonts-main/}"
      for FONTFILE in "$FONTPATH"/*.?tf; do
        printf ' %s\n' "$(md5sum "$FONTFILE" |sed -n 's/^\(.*\) .*\/\(.*tf$\)/\1 \2/p')"
      done
      printf '\n'
    } >> "$INDEX"
  done
  xz -f "$INDEX"
done
# Sign the INDEX.xz's?
# Generate previews
COLOR1=eeeeee
COLOR2=696969
TEXT='fnt preview'
# mkspecimen ~/.local/share/fonts/3270-Regular.ttf eeeeee 696969 "IBM 3270" "Insert coin." 3270-Regular.webp
mkspecimen() {
        font="$1"
        color1="$2"
        color2="$3"
        name="$4"
        text="$5"
        output="$6"
        if [ -n "$DEBUG" ]; then
                echo "[DEBUG] mkspecimen: $font $color1 $color2 $name $text $output"
        fi
        if convert \
                -size 396x486 \
                xc:'#'"$color1" \
                -font "$font" \
                -pointsize 60 \
                -draw 'fill #'"$color2"' rectangle 0,486 486,300' \
                -fill black \
                -annotate +20+74 "$name" \
                -annotate +20+140 "Aa Ee Rr" \
                -font "$font" \
                -annotate +20+205 "Bb Gg Jj" \
                -font "$font" \
                -pointsize 60 \
                -annotate +20+270 "$text" \
                -fill white \
                -pointsize 50 \
                -annotate +20+456 "0123456789" \
                -pointsize 130 \
                -annotate +285+200 "A" \
                -fill black \
                -pointsize 40 \
                -annotate +20+350 "abcdefghijklm" \
                -annotate +20+395 "nopqrstuvwxyz" \
                "$output"; then
                        if [ -n "$DEBUG" ]; then
                                echo "[DEBUG] mkspecimen: $font convert OK"
                        fi
                        return 0
                else
                        echo "[FAILED] mkspecimen $font" >/dev/stderr
                        return 1
        fi
}
for FOLDER in ofl apache; do
        # shellcheck disable=SC2018,SC2019
        mkdir -p preview
        #apt-get update -qq; apt-get install -qq imagemagick file
        find fonts-main/"$FOLDER" -maxdepth 1 -type d| while read -r FONTPATH; do
        {
                unset FILE NAME
                if [ -f "$FONTPATH"/METADATA.pb ]; then
                        NAME="${FONTPATH##*/}"
                        FILE="$(grep -m 1 -Po  '(?<=filename: ").*\.?tf' "$FONTPATH"/METADATA.pb)"
                        FILE=$FONTPATH/$FILE
                        if [ -n "$DEBUG" ]; then
                                echo "[DEBUG] FONT: $FONTPATH METADATA: true FILE: $FILE"
                        fi
                else
                        NAME="${FONTPATH##*/}"
                        FILE="$(find "$FONTPATH" -type f -iname '*regular*.[ot]tf' | head -n1)"
                        if [ -z "$FILE" ]; then
                                FILE="$(find "$FONTPATH" -type f -iname '*.[ot]tf'| head -n1)"
                        fi
                        if [ -n "$DEBUG" ]; then
                                echo "[DEBUG] FONT: $FONTPATH METADATA: false FILE: $FILE"
                        fi
                fi
                if [ -f "$FILE" ]; then
                        mkdir -p preview/"$NAME"
                        if [ -n "$DEBUG" ]; then
                                echo "[DEBUG] FONT: $FONTPATH mkspecimen $FILE"
                        fi
                        PREVIEW="preview/$NAME/preview.webp"
                        mkspecimen "$FILE" "$COLOR1" "$COLOR2" "$NAME" "$TEXT" "$PREVIEW"
                        if [ -f "$PREVIEW" ]; then
                                if ! file --brief --mime-type "$PREVIEW"|grep -q image/webp; then
                                        echo "[FAILED] FONT: $NAME preview seems to have failed for $PREVIEW"
                                else
                                        echo "[OK] FONT: $NAME preview generation"
                                fi
                        else
                                echo "[FAILED] FONT: $NAME preview generation" >/dev/stderr
                        fi
                else
                        echo "[FAILED][FILE ACCESS] FONT: $FONTPATH" >/dev/stderr
                        ls "$FONTPATH/*.*tf" >/dev/stderr
                fi
        }
        done
done
git add preview || :
git status -s -b -u
if git commit -m "$(date -Im)"; then
        git push
fi

# vim: ft=sh ts=2 sts=2 sw=2 et
