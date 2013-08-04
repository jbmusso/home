export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ls='ls -G -F'
alias ll='ls -l'


#################### COLORED MAN ######################################
# less env variables to make less a bit nicer to read
# https://wiki.archlinux.org/index.php/Man_Page#Colored_man_pages
# TODO: grab colors from Debian
# Makes man pages slightly easier to read
export LESS_TERMCAP_mb=$(printf "\e[1;31m")
export LESS_TERMCAP_md=$(printf "\e[1;31m")
export LESS_TERMCAP_me=$(printf "\e[0m")
export LESS_TERMCAP_se=$(printf "\e[0m")
export LESS_TERMCAP_so=$(printf "\e[1;44;33m")
export LESS_TERMCAP_ue=$(printf "\e[0m")
export LESS_TERMCAP_us=$(printf "\e[1;32m")
