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
