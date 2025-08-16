# Environment variables - loaded for all zsh shells (login, non-login, scripts)

export CODEROOT=$HOME/code
export DOTFILES=$HOME/.dotfiles/
export EDITOR=vim
export ASDFINSTALLS=$HOME/.asdf/installs
export ASDFROOT=$HOME/.asdf
export ERL_AFLAGS="-kernel shell_history enabled"

# Get current Node version from asdf
if command -v asdf &> /dev/null; then
    export NODEV=$(asdf current nodejs 2>/dev/null | sed 's/nodejs[[:space:]]*\([^[:space:]]*\).*/\1/')
    export NODEROOT=$ASDFINSTALLS/nodejs/$NODEV
fi

export XDG_CONFIG_HOME=$DOTFILES

# Terminal settings
export TERM=xterm-256color
export CLICOLOR=1

# Path configuration
export PATH="$PATH:/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin/:$NODEROOT/.npm/bin/:./node_modules/.bin:/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/opt/homebrew/bin:$HOME/.local/bin"