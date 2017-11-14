if [[ -f ~/.bash-config/bash_morgan ]]; then
  source ~/.bash-config/bash_morgan
fi

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# We add this in to import environment variables in /etc/profile.d/*.sh
for sh in /etc/profile.d/*.sh ; do
        [ -r "$sh" ] && . "$sh"
done
unset sh
