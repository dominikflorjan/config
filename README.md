# config
Place for all dots and rcs 

# Installation
```console
echo ".cfg" >> .gitignore
git clone --bare git@github.com:dominikflorjan/config.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```

Using fish shell in urxvt with tide or [hydro](https://github.com/jorgebucaran/hydro)

Vim status bar needs powerline fonts and proper urxvt font set up
```console
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts 
./install.sh
cd ..
rm -rf fonts
```
