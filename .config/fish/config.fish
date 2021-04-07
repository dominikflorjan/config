alias vim="nvim"
alias :q="exit"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Sync my goodnotes folder, with verbose option using rclone
alias sync_notes='rclone sync -v google_drive:GoodNotes/ /home/dominik/GoodNotes/'

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



# Add to PATH 
set PATH /usr/local/texlive/2020/bin/x86_64-linux $PATH
set PATH /home/dominik/.vim/plugged/nvim-treesitter/node_modules/tree-sitter-cli $PATH
set PATH /home/dominik/programs/arduino-ide_2.0.0-beta.3_Linux_64bit $PATH

set PATH /home/dominik/.cargo/bin $PATH
set PATH /usr/local/cuda-11.2/bin $PATH
set LD_LIBRARY_PATH /usr/local/cuda-11.2/lib64 $PATH
set PATH /usr/local/cuda-11.1/bin $PATH
set LD_LIBRARY_PATH /usr/local/cuda-11.1/lib64 $PATH

### Universal variables
set -U EDITOR nvim
set -x MANPAGER 'nvim +Man!'
set -x MANWIDTH 999

set -x NVIM_LISTEN_ADDRESS /tmp/mynvimserver
set --global hydro_color_pwd 00bcd4  

bind \cc kill-whole-line repaint
bind \cw history-search-backward
bind \ch beginning-of-line

# Fix not workign ctrl+f for autocmpletion, -M stands for mode and insert is for vi mode
bind -M insert \cf forward-char
# source "$HOME/anaconda3/etc/fish/conf.d/conda.fish"
#
source /opt/ros/noetic/share/rosbash/rosfish 
