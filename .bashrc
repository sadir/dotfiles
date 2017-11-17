. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
for file in $HOME/.{git-completion.sh,git-prompt.sh,bash_morgan,bash_aliases,exports.sh,paths.sh,extras.sh}; do
    [ -r "$file" ] && source "$file"
done
unset file
