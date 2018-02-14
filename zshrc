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

source ~/dotfiles/env_var.zsh
source ~/dotfiles/aliases.zsh
source ~/dotfiles/iterm2_shell_integration.zsh
