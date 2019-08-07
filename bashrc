# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source /act/etc/profile.d/actbin.sh

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND" 
# erasedups collapses duplicate entries in histrory
# export HISTCONTROL=erasedups:ignorespace

##### from https://github.com/necrolyte2/myhome
export TERM=screen-256color

alias latest='ls -ltr | tail -n'

# Use vim
alias vi='vim'

# Default Editor
EDITOR="vim"

# Directory Colors
# man dir_colors for more information on this
LS_COLORS='rs=0:di=1;33:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32'

export LS_COLORS
# mac-specific
# ls colors ON if supported
#if "$(uname)" != "Darwin"
#then
#    alias ls='ls --color=auto'
#fi
