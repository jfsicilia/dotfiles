#!/bin/bash
#
# Downloads fonts from the github repository and installs them.
#
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
if ! type -t cecho > /dev/null; then
    source $DOTFILES/cecho.sh
fi

cecho "Init fonts.sh" $green

FONTS_TMP=/tmp/fonts

mkdir -p $FONTS_TMP

# Download powerline git repository to tmp dir.
git clone git://github.com/powerline/fonts.git $FONTS_TMP 
# These are other great fonts.
# https://github.com/chrissimpkins/Hack/


# Get a list of all fonts.
FIND_COMMAND="find \"$FONTS_TMP\" \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -type f -print0"

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

cecho "All fonts installed to $FONTS_FOLDER" $green

# Clean up
rm -rf $FONTS_TMP

cecho "Done fonts.sh" $green
