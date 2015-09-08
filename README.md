# bash-config
My personalised bash config

To install it, just clone this repository to your home directory in a .bash-config directory:

```
git clone https://github.com/MorganSadr/bash-config.git ~/.bash-config
```

Then include the following in your .bashrc file:

```
if [[ -f ~/.bash-config/bash_morgan ]]; then
  source ~/.bash-config/bash_morgan
fi
```
