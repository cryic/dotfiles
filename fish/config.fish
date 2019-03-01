source ~/.asdf/asdf.fish

## env variables
# set nvim as default editor
set -U EDITOR nvim
# enable erlang/elixir shell history
set ERL_AFLAGS "-kernel shell_history enabled"

## aliases
# rails/gem
function bx --description 'alias bx=bundle exec'
  bundle exec
end
# git
function gaa --description 'alias gaa=git add -A'
  git add -A
end
function gwd --description 'alias gwd=git diff --word-diff'
  git diff --word-diff
end
function gwdc --description 'alias gwdc=git diff --cached --word-diff'
  git diff --cached --word-diff
end
function gst --description 'alias gst=git status'
  git status
end
function gp --wraps git --description 'alias gp=git push'
  git push
end
function gcm --wraps git --description 'alias gcm=git commit -m'
  git commit -m $argv
end
function gco --wraps git --description 'alias gco=git checkout'
  git checkout $argv
end
function gfr --wraps git --description 'alias gfr=git fetch --all'
  git fetch --all
end
function gitclean --description 'prunes remote references then deletes local branches'
  git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d
end

# app
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
