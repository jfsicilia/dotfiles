#!/bin/bash
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
if ! type -t cecho > /dev/null; then
    source $DOTFILES/cecho.sh
fi

cecho "Init link.sh" $green

cecho "Creating symlinks" $green

# Link files
# $1 source.
# $2 destiny.
link_file () {
    local src=$1 dst=$2
    local overwrite= backup= skip=
    local action=

    if [ -f "$dst" -o -d "$dst" -o -L "$dst" ]
    then
        if [ "$overwrite_all" == "false" ] && [ "$backup_all" == "false" ] && [ "$skip_all" == "false" ]
        then
            local currentSrc="$(readlink $dst)"

            if [ "$currentSrc" == "$src" ]
            then
                echo "p3"
                skip=true;

            else
                echo "File already exists: $dst ($(basename "$src"))"
                echo "[s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
                read -n 1 action

                case "$action" in
                    o )
                        overwrite=true;;
                    O )
                        overwrite_all=true;;
                    b )
                        backup=true;;
                    B )
                        backup_all=true;;
                    s )
                        skip=true;;
                    S )
                        skip_all=true;;
                    * )
                        ;;
                esac

            fi

        fi

        overwrite=${overwrite:-$overwrite_all}
        backup=${backup:-$backup_all}
        skip=${skip:-$skip_all}

        if [ "$overwrite" == "true" ]
        then
            rm -rf "$dst"
            cecho "removed $dst" $green
        fi

        if [ "$backup" == "true" ]
        then
            mv "$dst" "${dst}.backup"
            cecho "moved $dst to ${dst}.backup" $green
        fi

        if [ "$skip" == "true" ]
        then
            cecho "skipped $src" $green
        fi
    fi

    if [ "$skip" != "true" ]  # "false" or empty
    then
        ln -s "$1" "$2"
        cecho "linked $1 to $2" $green
    fi
}

overwrite_all=false
backup_all=false
skip_all=false
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file ".symlink" )"
    if ! test -h $target; then
        cecho "creating symlink for $file in home" $green
        link_file "$file" "$target"
    fi
done

cecho "Done link.sh" $green
