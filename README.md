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

## Shell

Using fish shell in urxvt with [tide](https://github.com/IlanCosman/tide) or [hydro](https://github.com/jorgebucaran/hydro) prompt

Fish 3.2.0 is a must

## Vim

Vim status bar needs powerline fonts and proper urxvt font set up

```console
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts 
./install.sh
cd ..
rm -rf fonts
```

## Install rclone

```console
curl linkhttps://rclone.org/install.sh | sudo bash
```

## LSP support for neovim 

Running neovim 0.5 for this to run

### python completion 
```
sudo npm install -g pyright
```
