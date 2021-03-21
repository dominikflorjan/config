alias vim="nvim"
alias :q="exit"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

source "$HOME/anaconda3/etc/fish/conf.d/conda.fish"

# Add to PATH 
set -U fish_user_paths /usr/local/texlive/2020/bin/x86_64-linux $fish_user_paths

### Universal variables
set -U EDITOR nvim
set -x MANPAGER 'nvim +Man!'
set -x MANWIDTH 999

set --global hydro_color_pwd 00bcd4  

# Fix not workign ctrl+f for autocmpletion
bind -M insert \cf forward-char

# set custom fish greeting -- type this into terminal
# function fish_greeting:
    # fortune
# end
# 
# funcsave fish_greeting
