# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

export IMAGE='registry.gitlab.gnome.org/jrb/crosswords/opensuse/tumbleweed:x86_64-2025-03-17.0-master'
export MAN_POSIXLY_CORRECT=1

alias p='cd ..'
alias l='ls'
alias sd='shutdown now'
alias rs='reset'
alias rb='sudo reboot'
alias vg='vi ~/.gitconfig'
alias vb='vi ~/.bashrc && sb'
alias sb='source ~/.bashrc'
alias sz='sudo zypper'
alias zi='sz in'
alias zr='sz refresh'
alias zup='sz dup'
alias de='env XDG_DATA_DIRS= distrobox enter box'
alias ce='crossword-editor'
alias cc='crosswords'
alias cs='cd ~/crosswords/src'
alias cw='cd ~/crosswords'
alias bb='rs && sh b'
alias bu='git ada && git ctm Backup && git ps'
alias aq='ag -Q'
alias ra='rs && ag'
alias rag='ra'
alias agr='ra'
alias aqr='rs && aq'
alias raq='aqr'
alias ziy='zi -y'
alias diff='colordiff -u'
alias wlc='wl-copy'
alias wlp='wl-paste'
