# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias g='git'
alias gc='git clone --depth=1'
alias gs='git status'
alias ga='git add'
alias gb='git branch -M'
alias gd='git diff'
alias gco='git checkout'
alias gcm='git commit -m'
alias gpl='git pull'
alias gps='git push -u origin'
alias v='nvim'
alias c='clear'
alias bd='bun dev'
alias bi='bun install'
alias bt='bun run test'
alias br='bun remove'
alias xi='sudo xbps-install'
alias xr='sudo xbps-remove -Rf'
alias sy='sudo xbps-install -Su'
alias ht='htop'
alias s='sensors'
alias th='touch'
alias mk='mkdir -p'
alias sl='ls'
alias S='sudo poweroff'
alias R='sudo reboot'
alias conf='nvim ~/.zshrc && zsh'
alias m='mocp'
alias t='tmux'
alias rf='rm -rf'
alias py='python3'
alias '?'='tgpt -s'
alias pysetupenv='python3 -m venv . && chmod +x ./bin/activate && ./bin/activate'
alias pyenv='./bin/python3'
alias pipenv='./bin/pip'
alias ni="npm i --no-audit --no-fund --omit=optional"
alias nr="npm remove --no-audit --no-fund"
alias nu="npm update --no-audit --no-fund"
alias ls="exa --icons"
alias ll="exa --icons -l"
alias la="exa --icons -la"
alias cat="bat"

eval "$(starship init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/tux/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bun completions
[ -s "/home/tux/.bun/_bun" ] && source "/home/tux/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
