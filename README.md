# bash-config
My personalised bash config

This setup assumes you are using OSX.

To install it, just clone this repository to your home directory in a .bash-config directory:

```
git clone https://github.com/sadir/bash-config.git ~/.bash-config
```

Next install [asdf](https://github.com/asdf-vm/asdf) but don't echo the lines into your `~/.bash_profile`.

Then replace your `~/.bashrc` with `bashrc`.

..and ensure you are sourcing your `~/.bashrc` file from `~/.bash_profile`:

`source $HOME/.bashrc`

Copy over the bash_aliases file, `cp bash_aliases ~/.bash_aliases`

Copy over the gitconfig file, `cp gitconfig ~/.gitconfig`, then make changes as you see fit (e.g your name and email).

Bash environment variables go in `/etc/profile.d/`, which won't exist yet. To create it run `sudo mkdir /etc/profile.d`

Then replace your `/etc/profile` with `./etc/profile`.

Next, copy over the contents of `./etc/profile.d/` to that folder, and customise the contents to your setup.

Finally, copy over the contents of `./etc/paths.d/` to `/etc/paths.d/`.
