# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# GUIX_PROFILE="$HOME/.guix-profile"
# export GUIX_LOCPATH=$HOME/.guix-profile/lib/locale
export LC_ALL=en_US.UTF-8
# export GUIX_LD_WRAPPER_ALLOW_IMPURITIES="yes, please"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export BROWSER=firefox-developer-edition
export R_LIBS_USER="~/.R/lib"
export VISUAL="nvim"
export EDITOR="nvim"
export GIT_EDITOR="nvim"
export SYSTEMD_EDITOR="nvim"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#     xterm-color) color_prompt=yes;;
# esac

# # uncomment for a colored prompt, if the terminal has the capability; turned
# # off by default to not distract the user: the focus in a terminal window
# # should be on the output of commands, not on the prompt
# force_color_prompt=yes

# if [ -n "$force_color_prompt" ]; then
#   if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#     # We have color support; assume it's compliant with Ecma-48
#     # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#     # a case would tend to support setf rather than setaf.)
#     color_prompt=yes
#   else
#     color_prompt=
#   fi
# fi

case $HOSTNAME in
  "hyperion") color="32""m";;
  "gaia") color="33""m";;
  *) color="39""m";;
esac

source /usr/share/git/completion/git-prompt.sh

# git prompot configuration
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_STATESEPARATOR=" | "
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_HIDE_IF_PWD_IGNORED=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_HIDE_IF_PWD_IGNORED=1

# prompt command configuration
PROMPT_COMMAND='__git_ps1 "[\[\033[001;$color\]\u@\h \[\033[00m\]\[\033[01;34m\]\W\[\033[00m\]" "]\$ "'
# PS1='[\[\033[001;$color\]\u@\h \[\033[00m\]\[\033[01;34m\]\W\[\033[00m\] ]\$ '

# enable color support of ls and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
#    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#    alias ls='ls --color=auto'
#    alias dir='dir --color=auto'
#    #alias vdir='vdir --color=auto'

#    alias grep='grep --color=auto'
#    alias fgrep='fgrep --color=auto'
#    alias egrep='egrep --color=auto'
#fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# # enable programmable completion features (you don't need to enable
# # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# # sources /etc/bash.bashrc).
# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi

# TMUX
if which tmux >/dev/null 2>&1; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi

# source ~/life/tools/organizer_aliases

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# eval "$(pandoc --bash-completion)"


# PATH configuration
export PATH="$PATH:$HOME/bin:$HOME/.local/bin"

# change default modes of new files
# umask 002

complete -C /home/xavier/.cache/yay/symfony-cli/pkg/symfony-cli/usr/bin/symfony symfony
