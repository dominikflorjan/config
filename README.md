# Config

Place for all dots and rcs 

## Repo installation

```console
echo ".cfg" >> .gitignore
git clone --bare git@github.com:dominikflorjan/config.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```

## Alacritty 

```
git clone https://github.com/alacritty/alacritty.git
cd alacritty
```

Install rustup
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup override set stable
rustup update stable
```

Install dependencies
```
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
```

Install alacritty
```
cargo build --release
```

Post install
```
infocmp alacritty

sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
```

Set alacritty as default terminal emulator
```
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/alacritty 50
sudo update-alternatives --config x-terminal-emulator
```

## Shell

Using fish shell [tide](https://github.com/IlanCosman/tide) or [hydro](https://github.com/jorgebucaran/hydro) prompt.
```
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install fish
sudo chsh -s /usr/local/bin/fish
```

Fisher for plugin menagement
```
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

Tide prompt
```
fisher install IlanCosman/tide@v5
```

## Neovim  

Installing from source:
```
git clone -b stable https://github.com/neovim/neovim
cd neovim 
make CMAKE_BUILD_TYPE=Release
sudo make install
```

## Fonts

Vim/Nvim status bar needs powerline fonts and proper terminal font set up.

```console
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts 
./install.sh
cd ..
rm -rf fonts
```

For glyphs to be working, [Nerd font](https://www.nerdfonts.com/font-downloads) needs to be installed.
Alacritty uses DejaVuSansMono Nerd Font.


## Install rclone 

```console
curl linkhttps://rclone.org/install.sh | sudo bash
```

## Backlight control for laptop

use Light

add user to videos group
```
sudo usermod -a -G video $USER
```
