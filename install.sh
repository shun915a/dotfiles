#!/bin/sh

function has() {
    type "$1" &>/dev/null
}

function git_clone() {
    if has "git"; then
        git clone --recursive "$1" "$2"

    elif has "curl" || has "wget"; then
        tarball="$GITHUB_URL/archive/master.tar.gz"

        mkdir -p "$2"
        if has "curl"; then
            curl -L "$tarball"

        elif has "wget"; then
            wget -O - "$tarball"

        fi | tar zxvf -C "$2" --strip-components=1

    else
        echo "git or curl or wget required"
        exit 1;
    fi
}

############
# dotfiles #
############

DOTPATH=$HOME/dotfiles
GITHUB_URL="https://github.com/shun915a/dotfiles"

git_clone "$GITHUB_URL" "$DOTPATH"

cd $DOTPATH
if [ $? -ne 0 ]; then
    echo "not found: $DOTPATH"
    exit 1;
fi

for f in .??*
do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue

    ln -snfv "$DOTPATH/$f" "$HOME/$f"
    echo "$DOTPATH/$f"
    echo "$HOME/$f"
done

echo ">> installed dotfiles"

########
# dein #
########
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm ./installer.sh
echo ">> installed dein.vim"

