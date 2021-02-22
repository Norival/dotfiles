alias vim="nvim"
alias vi="nvim"
alias firefox="firefox-developer-edition"
# alias mutt='cd ~/downloads/attachments && mutt'
# alias populus="java -jar /opt/PopulusAll.jar"
# alias R="R --quiet"
alias listing="tree -fi -P *.tex -P *.R -P *.bib -P *.bst -P *.sty -P *.Rnw -P *.pdf"
# alias sweave_doc="R CMD Sweave --pdf --engine=knitr::knitr"

alias todo="todo.sh"
complete -F _todo todo

# scripts
# alias mount_leca="~/scripts/mount_leca.sh"
alias monitors="~/scripts/monitors.sh"
alias secscreenon="~/scripts/secscreenon.sh"
alias secscreenoff="~/scripts/secscreenoff.sh"
# alias latexclean="~/scripts/latexclean.sh"
# alias sweaveclean="~/scripts/sweaveclean.sh"
# alias newpost="~/scripts/new_post.sh"

# ls aliases
alias ll='ls --color=auto -hlF'
alias la='ls --color=auto -A'
alias l='ls --color=auto -CF'

alias tree='tree -C'

alias df='df -h'
# alias battlenet="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Battle.net/Battle.net\ Launcher.exe"

notrestore() {
  notmuch restore --input=$1
}
notdump() {
  notmuch dump --output=$1
}

alias bigterm='urxvt -fn xft:Hack:style=Regular:pixelsize=14:antialias=true'
