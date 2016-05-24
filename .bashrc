# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PS1=" \[\033[0;36m\]\u \[\033[0;35m\]\h \[\033[1;37m\]\W \[\033[1;36m\]\$\[\033[1;37m\] "
#LS_COLORS="fi=97:di=34:ln=36:ex=32"
TERM=xterm-256color

alias ll="ls -la"
alias http="python -m SimpleHTTPServer"
