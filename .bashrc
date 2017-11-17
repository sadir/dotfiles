for file in $HOME/.{bash_morgan, bash_aliases, git-completion.sh, git-prompt.sh}; do
    [ -r "$file" ] && source "$file"
done
unset file

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# We add this in to import environment variables in /etc/profile.d/*.sh
for sh in /etc/profile.d/*.sh ; do
  [ -r "$sh" ] && . "$sh"
done
unset sh
