# bash-config
My personalised bash config

To install it, just clone this repository to your home directory in a .bash-config directory:

```
git clone https://github.com/sadir/bash-config.git ~/.bash-config
```

Then include the following in your .bashrc file:

```
if [[ -f ~/.bash-config/bash_morgan ]]; then
  source ~/.bash-config/bash_morgan
fi
```

Bash environment variables go in `/etc/profile.d/`.

This bash setup contains commands `p` and `np` which assume you have a `http_proxy` environment variable set in `/etc/profile.d/proxy`.

To do this run the following as root replacing 'my_proxy' with the proxy you want to use.

`echo 'export http_proxy=my_proxy:8080' >/etc/profile.d/proxy`

You may need to create the profile.d directory first as root if you are on OSX.
