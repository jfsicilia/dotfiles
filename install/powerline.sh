#!/bin/bash
#
# Downloads powerline fonts from the github repository and installs them.
#
if test -f ../cecho.sh; then
    source ../cecho.sh
fi

cecho "Init powerline.sh" $green

POWERLINE_TMP=/tmp/powerline

mkdir -p $POWERLINE_TMP

# Download powerline git repository to tmp dir.
git clone git://github.com/powerline/fonts.git $POWERLINE_TMP 

# Get a list of all fonts.
FIND_COMMAND="find \"$POWERLINE_TMP\" \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -type f -print0"

if [[ `uname` == 'Darwin' ]]; then
  # MacOS
  FONTS_FOLDER="$HOME/Library/Fonts"
else
  # Linux
  FONTS_FOLDER="$HOME/.fonts"
  mkdir -p $FONTS_FOLDER
fi

# Copy all fonts to user fonts directory
eval $FIND_COMMAND | xargs -0 -I % cp "%" "$FONTS_FOLDER/"

# Reset font cache on Linux
if [[ -n `which fc-cache` ]]; then
  fc-cache -f $FONTS_FOLDER
fi

cecho "All Powerline fonts installed to $FONTS_FOLDER" $green

# Clean up
rm -rf $POWERLINE_TMP

cecho "Done powerline.sh" $green
