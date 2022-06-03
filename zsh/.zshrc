ZSH_THEME="spaceship"
#ZSH_THEME="robbyrussell"

plugins=(
	colored-man-pages
	git
    zsh-syntax-highlighting
)

HIST_STAMPS="dd.mm.yyyy"

export ZSH="$HOME/.oh-my-zsh"
export MANPATH="/usr/local/man:$MANPATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/arthur/.local/bin:$PATH"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

source ~/.config/spaceship_config.sh

source $ZSH/oh-my-zsh.sh
source ~/.config/custom_commands.sh

export LOGIN_42='apigeon'
export MAIL_42="$LOGIN_42@student.42.fr"
export LANG="en_US.UTF-8"
export EDITOR="vim"
export MallocNanoZone=0

alias ccf="cc -Wall -Wextra -Werror $@"
alias norm='norminette'
alias vimconf='vim ~/.config/nvim/init.vim'
alias zshconf="vim $ZDOTDIR/.zshrc"
alias python="python3"
alias pip="pip3"
alias vi="vim"
alias vim="nvim"

eval "$(/opt/homebrew/bin/brew shellenv)"
