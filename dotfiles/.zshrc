if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  bundler
  dotenv
  macos
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export DOCKER_USER=$(id -u ${USER}):$(id -g ${USER})

# Replace default console utils
alias ca=bat
alias ls="exa"
alias l="exa -lahF"
alias vi="nvim"
alias nviconf="vi .config/nvim/init.vim"
alias viconf="vi .vimrc"

# Git Alises
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"

export PATH=/opt/homebrew/bin:$PATH


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
