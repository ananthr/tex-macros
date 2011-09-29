source ~/.aliases
autoload -U colors && colors
clear

#PS1="%{$terminfo[bold]$fg[yellow]%}%T%{$terminfo[bold]$fg[magenta]%} %3c%{$terminfo[bold]$fg[black]%};%{$reset_color%}"
PS1="%{$terminfo[bold]$fg[blue]%}%T%{$terminfo[bold]$fg[green]%}•%{$fg[magenta]%}%3c%{$terminfo[bold]$fg[black]%}•%{$reset_color%}"

#	if [[ ${EUID} == 0 ]] ; then
#		PROMPT='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
#	else
#		PROMPT='\[\033[01;34m\][ \[\033[01;31m\]\# \w \[\033[01;34m\]]\[\033[00m\] '
#	fi

# ls colors
LS_COLORS='di=1;94:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS
export LSCOLORS=CxFxCxDxBxegedabagacad
PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:/usr/X11R6/bin:/Applications:/Users/ananthr/fink/bin:/Users/ananthr/fink/sbin
#PATH=/Users/ananthr/fink/bin:/Users/ananthr/fink/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:/usr/X11R6/bin:/Applications
