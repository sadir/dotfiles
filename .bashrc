. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
source $HOME/git-pairing-session/git-pairing-session
for file in $HOME/.{git-completion.sh,git-prompt.sh,exports.sh,extras.sh,bash_morgan,bash_aliases,paths.sh}; do
    [ -r "$file" ] && source "$file"
done
unset file
