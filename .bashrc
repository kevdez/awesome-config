#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


##########################################
# colored prompt
if [ "`tput colors`" = "256" ]; then
  B="\e[0;38;5;67m"
  G="\e[0;38;5;114m"
  Y="\e[0;38;5;214m"
else
  B="\e[0;34m"
  G="\e[0;32m"
  Y="\e[0;33m"
fi

W="\e[0m"
R="\e[0;31m"

PS1="\n\[$B\]┌────\[$W\][ \[$Y\]\A \[$W\]]\[$B\]───\[$W\][ \[$G\]\u\[$R\] @ \[$G\]\h\[$W\] ]\[$B\]─────────\[$W\][ \[$G\]\w \[$W\]]\n\[$B\]└─\[$Y\]>>> \[$W\]"
PS2="  \[$Y\]> \[$W\]"

#############################################

# original Arch prompt
# PS1='[\u@\h \w]\$ '

# \u is user     \h is host    \w is path \A is time

# white bracket, gray user, red at sign, gray host, white colon, brown pwd, white bracket, dollarsign, space
# PS1='[\[\e[37m\]\u\[\e[31m\]@\[\e[37m\]\h\[\e[0m\]:\[\e[33m\]\w\[\e[0m\]] \$ '

# cool prompts
# PS1="\[\e[1;32m\]┌─[\[\e[37;1m\]\u@\H\[\e[1;32m\]]─────────────────────────────────────────────────────────[\[\e[1;37m\]\W\[\e[1;32m\]] \n└─[\[\e[1;37m\]\t\[\e[1;32m\]]── \e[1;37m\]"
# PS1="┌─[\[\e[36;1m\]\u @ \[\e[32;1m\]\H\[\033[1;37m\]] \n\[\033[1;37m\]└─[\[\033[0;36m\]\w\[\033[1;37m\]]> \[\e[0m\]"
# PS1='\[\e[34m\]┌─[\[\e[37m\]\u@\t\[\e[34m\]] \n└─[\[\e[37m\]\W\[\e[34m\]]> '
# PS1="\n╔═[\[\033[01;36m\]\A\[\033[01;00m\]]═[\[\033[01;32m\]\u\[\033[01;33m\]@\[\033[01;31m\]\h\[\033[01;00m\]]\n\[\033[01;00m\]╚═══\[\033[00;32m\]=\[\033[00;33m\]=\[\033[00;31m\]=\[\033[01;00m\]═══[\[\033[01;36m\]\$CurDir\[\033[01;00m\]]\[\033[01;32m\]>>\[\033[00m\] "
# PS1="\[$B\]┌─\[$W\][ \[$Y\]\A \[$W\]][ \[$G\]\h:\w \[$W\]]\n\[$B\]└─\[$Y\]> \[$W\]"
# PS1='\[\033[0;32m\]┌─[ \[\033[0m\033[0;32m\]\u\[\033[0m\] @ \[\033[0;36m\]\h\[\033[0m\033[0;32m\] ] - [ \[\033[0m\]\t \d\[\033[0;32m\] ] - [ \[\033[0m\]\w\[\033[0;32m\] ]\n\[\033[0;32m\]└─[\[\033[0m\033[0;32m\]\$\[\033[0m\033[0;32m\]]>\[\033[0m\] '


alias awesomeThemeLua='vim /usr/share/awesome/themes/mytheme/theme.lua'
alias dropbox='.dropbox-dist/dropboxd'
alias mouseon='synclient TouchpadOff=0'
alias mouseoff='synclient TouchpadOff=1'
alias ls='ls --color=auto'
alias irssi="urxvt -name irssi -e irssi"
alias colorify='sh $HOME/.colors'
alias ..='cd ..'

cd() { builtin cd "$1" ; ls -a ; }
