# bash-config
My personalised bash config

To install it, just clone this repository to your home directory in a .bash-config directory:

```
git clone https://github.com/sadir/bash-config.git ~/.bash-config
```

Then include the following in your `~/.bashrc` file:

```
if [[ -f ~/.bash-config/bash_morgan ]]; then
  source ~/.bash-config/bash_morgan
fi
```

..and ensure you are sourcing your `~/.bashrc` file from `~/.bash_profile`:

`source $HOME/.bashrc`

Bash environment variables go in `/etc/profile.d/`, which may not exist if you are on OSX.

To create it run: `sudo mkdir /etc/profile.d`

Then replace your `/etc/profile` with `./etc/profile`.

Next, copy over the contents of `./etc/profile.d/` to that folder, and replace the proxy in `proxy.sh` with yours.

Finally, copy over the contents of `./etc/paths.d/` to `/etc/paths.d/`.
