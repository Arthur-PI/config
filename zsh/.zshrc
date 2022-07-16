
if [ `uname` = "Darwin" ]; then
	ZSH_THEME="spaceship"
	source ~/.config/spaceship_config.sh
else
	ZSH_THEME="robbyrussell"
fi

plugins=(
	colored-man-pages
	git
    zsh-syntax-highlighting
)

HIST_STAMPS="dd.mm.yyyy"

export ZSH="$HOME/.oh-my-zsh"
export MANPATH="/usr/local/man:$MANPATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

source $ZSH/oh-my-zsh.sh
source ~/.config/custom_commands.sh

export LOGIN_42='apigeon'
export MAIL_42="$LOGIN_42@student.42.fr"
export LANG=en_US.UTF-8
export LC_LANG=en_US.UTF-8
export EDITOR="vim"

alias ccf="cc -Wall -Wextra -Werror $@"
alias norm='norminette'
alias zshconf="vim $ZDOTDIR/.zshrc"
alias python="python3"
alias pip="pip3"
alias vi="vim"
alias vimconf='vi ~/.config/vimrc'

if [[ `uname` == "Darwin" ]]; then
	export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if command -v nvim &> /dev/null; then
	alias vimconf='vim ~/.config/nvim/init.vim'
	alias vim="nvim"
fi

