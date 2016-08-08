# Ron Yang
# setup.sh

SCRIPTNAME=$(basename $0)
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

### Dotfiles
for FILE in .bash_profile .emacs;
do
    if [ ! -h "$HOME/$FILE" ];
    then
	ln -s $SCRIPTDIR/$FILE $HOME
    else
	echo "$SCRIPTNAME: $FILE already linked"
    fi
    done
