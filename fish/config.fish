source ~/.asdf/asdf.fish

## env variables
# set nvim as default editor
set -U EDITOR nvim
# enable erlang/elixir shell history
set ERL_AFLAGS "-kernel shell_history enabled"

## aliases
#alias bx='bundle exec'
function bx --description 'alias bx=bundle exec'
  bundle exec
end
#alias gaa='git add -A'
function gaa --description 'alias gaa=git add -A'
  git add -A
end
#alias gwd="git diff --word-diff"
function gwd --description 'alias gwd=git diff --word-diff'
  git diff --word-diff
end
#alias gwdc="git diff --cached --word-diff"
function gwdc --description 'alias gwdc=git diff --cached --word-diff'
  git diff --cached --word-diff
end
#alias gst="git status"
function gst --description 'alias gst=git status'
  git status
end
#alias gp="git push"
function gp --description 'alias gp=git push'
  git push
end
#alias gcm="git commit -m"
function gcm --wraps git --description 'alias gcm=git commit -m'
  git commit -m $argv
end
#alias code="vscodium"
function code --wraps vscodium --description 'alias code=vscodium'
  vscodium $argv
end

## setup vim mode
fish_vi_key_bindings
function my_vi_bindings
  fish_vi_key_bindings
  bind -M insert -m default fd backward-char force-repaint
end
set -g fish_key_bindings my_vi_bindings
