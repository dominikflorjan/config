alias vim="nvim"
alias :q="exit"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Sync my goodnotes folder, with verbose option using rclone
alias sync_notes='rclone sync -v google_drive:GoodNotes/ /home/dominik/GoodNotes/'

set PATH /home/dominik/.cargo/bin $PATH

source "$HOME/anaconda3/etc/fish/conf.d/conda.fish"
# source "$HOME/.cargo/env"

# Add to PATH 
set -U fish_user_paths /usr/local/texlive/2020/bin/x86_64-linux $fish_user_paths


### Universal variables
set -U EDITOR nvim
set -x MANPAGER 'nvim +Man!'
set -x MANWIDTH 999

set --global hydro_color_pwd 00bcd4  

bind \cc kill-whole-line repaint
bind \cw history-search-backward

# Fix not workign ctrl+f for autocmpletion, -M stands for mode and insert is for vi mode
bind -M insert \cf forward-char
