for file in $HOME/dotfiles/.{git-completion.sh, git-prompt.sh, bash_morgan, bash_aliases, .exports.sh, .paths.sh}; do
    [ -r "$file" ] && source "$file"
done
unset file

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
