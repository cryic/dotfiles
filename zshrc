#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

#setup rbenv
#eval "$(rbenv init -)"

source ~/dotfiles/env_var.zsh
source ~/dotfiles/aliases.zsh
source ~/dotfiles/iterm2_shell_integration.zsh

export GPG_TTY=$(tty)

eval export

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

bindkey -v

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="/usr/local/opt/openssl/bin:$PATH"
