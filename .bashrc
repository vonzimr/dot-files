#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim='vim --servername VIM'
alias vimr='vim --remote'
PS1='[\u@\h \W]\$ '
export vblank_mode=0
export PRIMUS_SYNC=1
