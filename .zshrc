# Homebrew setup
eval "$(/opt/homebrew/bin/brew shellenv)"

# ASDF setup with zsh completions
. $(brew --prefix asdf)/libexec/asdf.sh
# Append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

# Initialize completions (must be after fpath modifications)
autoload -Uz compinit && compinit

# Source other config files
for file in $HOME/.{zsh_morgan,zsh_aliases,paths.sh}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Source extras if it exists (for local/private settings)
[ -r "$HOME/.extras.sh" ] && source "$HOME/.extras.sh"

# Source python virtual envs if available
[ -f .venv/bin/activate ] && source .venv/bin/activate

# Ghostty shell integration (auto-injected when running in Ghostty)
# No need to manually source - Ghostty handles this automatically for zsh