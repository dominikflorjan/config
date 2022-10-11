alias vim="nvim"
alias :q="exit"
alias xc="xcrysden"
alias python="python3"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# For working with config repo (bare)
alias gvim="env GIT_DIR=$HOME/.cfg GIT_WORK_TREE=$HOME nvim"

# For working with plugins
alias pvim="nvim --cmd \"set rtp+=\"(pwd) ."

alias fd="fdfind"

# Sync my goodnotes folder, with verbose option using rclone
alias sync_notes='rclone sync -v google_drive:GoodNotes/ /home/dominik/GoodNotes/'

### SSH with alacritty
alias ssh='TERM=xterm-256color /usr/bin/ssh -X'

alias pip="pip3"

# Run Tensorrt docker image
alias docker_nvidia='sudo docker run \
            -it --gpus all --privileged \
            --env="DISPLAY=:1" \
            --env="QT_X11_NO_MITSHM=1" \
            --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
            --env="XAUTHORITY=$XAUTH" \
            --volume="$XAUTH:$XAUTH" \
            --volume="$HOME/shared:/home/ue4/share:rw" \
            --env="NVIDIA_VISIBLE_DEVICES=all" \
            --env="NVIDIA_DRIVER_CAPABILITIES=all" \
            --network=host \
            nvcr.io/nvidia/tensorrt:20.09-py3'

function mountICM
    sshfs dflorjan@login.icm.edu.pl:/lu/tetyda/home/dflorjan/MoTe2 $argv;
end

function mountICMmkoz
    sshfs dflorjan@login.icm.edu.pl:/lu/tetyda/home/mkoz $argv;
end

function mountICMmszary
    sshfs dflorjan@login.icm.edu.pl:/lu/tetyda/home/mszary $argv;
end

function ok
 okular $argv &; 
end

function mount_smb
    sudo mount -t cifs -o username=serverUserName //myServerIpAdress/sharename $argv;
end

# Add to PATH 
set PATH /usr/local/texlive/2020/bin/x86_64-linux $PATH
set PATH /home/dominik/.vim/plugged/nvim-treesitter/node_modules/tree-sitter-cli $PATH
set PATH /home/dominik/programs/arduino-ide_nightly-20210618_Linux_64bit $PATH

set PATH /home/dominik/.cargo/bin $PATH
set PATH /home/dominik/programs/ovito-basic-3.6.0-x86_64/bin $PATH

set PATH /home/dominik/.local/bin $PATH

set PATH /home/dominik/programs/qe-6.7/bin $PATH
set PATH /home/dominik/programs/xcrysden-1.6.2-bin-shared/ $PATH

set PATH /home/dominik/orca $PATH
set -x LD_LIBRARY_PATH /home/dominik/orca


### Universal variables
set -U EDITOR nvim
set -x MANPAGER 'nvim +Man!'
set -x MANWIDTH 999

set -x NVIM_LISTEN_ADDRESS /tmp/mynvimserver
set --global hydro_color_pwd 00bcd4  

bind \cw history-search-backward
bind \ch beginning-of-line

# Fix not workign ctrl+f for autocmpletion, -M stands for mode and insert is for vi mode
bind -M insert \cf forward-char
# source "$HOME/anaconda3/etc/fish/conf.d/conda.fish"
