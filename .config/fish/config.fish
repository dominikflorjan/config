alias vim="nvim"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

source "$HOME/anaconda3/etc/fish/conf.d/conda.fish"

# Fish comment -- not the best way to add to path, shows prompt
# fish_add_path /usr/local/texlive/2020/bin/x86_64-linux

set -U fish_user_paths /usr/local/texlive/2020/bin/x86_64-linux $fish_user_paths

### Universal variables
set -U EDITOR nvim
