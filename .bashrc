# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PS1=" \[\033[0;32m\]\u \[\033[0;31m\]\h \[\033[1;37m\]\W \[\033[1;36m\]\$\[\033[1;37m\] "
alias grep="grep -s"
alias rv="review ticket -t"
alias ls="ls --color=tty"
#LS_COLORS="fi=97:di=34:ln=36:ex=32"
eval `dircolors ~/.dir_colors`
TERM=xterm-256color

alias ll="ls -la"
