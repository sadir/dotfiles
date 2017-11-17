for file in $HOME/dotfiles/.{bash_morgan, bash_aliases, git-completion.sh, git-prompt.sh, .exports.sh, .paths.sh}; do
    [ -r "$file" ] && source "$file"
done
unset file

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
