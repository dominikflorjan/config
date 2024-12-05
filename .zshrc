# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# OH MY POSH 
# eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/atomic.omp.json)"
# eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/atomic.omp.json')"
# eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/catppuccin.omp.json')"
#
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
  zsh-autosuggestions
  )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# kitty ssh fix
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="TERM=xterm-256color ssh" aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias vimconfig='nvim ~/.config/nvim/init.lua'
alias xc="xcrysden"
alias :q="exit"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vim="nvim"
alias cd="z"
alias python="python3"

alias syncPiotr='rsync -avu --exclude "files" --exclude "*JOB*" --exclude "core" ~/Documents/icm/radomski/Intercalation_CO_CO2_MoS2/ ~/MEGA/Perla_Nauki/Intercalation/RadomskiMoS2 --exclude "*wfc*" --exclude "*old*" --exclude "*pbe*" --exclude "*outdir*"'

# My aliases with arguments
mountICM() {
  sshfs dflorjan@login.icm.edu.pl:/lu/tetyda/home/dflorjan/ $1;
}

mountICMSzary() {
  sshfs dflorjan@login.icm.edu.pl:/lu/tetyda/home/mszary/ $1;
}

mountICMPiotr() {
  sshfs dflorjan@login.icm.edu.pl:/lu/tetyda/home/radomski/ $1;
}

mountICMBabel() {
  sshfs dflorjan@login.icm.edu.pl:/lu/tetyda/home/babel/ $1;
}

mountTopola() {
    sshfs dflorjan@login.icm.edu.pl:/lu/topola/home/dflorjan $1;
}

### PATH 
export PATH=/usr/local/bin:$PATH
export PATH=/home/dominik/.local/bin:$PATH
export PATH=/home/dominik/programs/lammps_gpu/build:$PATH
export PATH=/home/dominik/programs/xcrysden-1.6.2-bin-shared:$PATH
export PATH=/home/dominik/programs/qe-7.3.1/build/bin/:$PATH
export PATH=/usr/local/texlive/2022/bin/x86_64-linux:$PATH
export PATH=/home/dominik/programs/ovito-basic-3.10.6-x86_64/:$PATH
export LAMMPS_POTENTIALS=/home/dominik/programs/lammps_gpu/potentials/

# Moletemplate
export PATH=$PATH:$HOME/programs/moltemplate/moltemplate
export PATH=$PATH:$HOME/programs/moltemplate/moltemplate/scripts

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

export LAMMPS_PYTHON_TOOLS=/home/dominik/programs/lammps/tools/python/pizza/

# zoxide
eval "$(zoxide init zsh)"

# ORCA 6.0.0 secion
export PATH=/home/dominik/orca_6_0_0:$PATH

