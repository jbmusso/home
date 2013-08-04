export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ls='ls -G -F'
alias ll='ls -l'

# Enable bash completion as provided by Mac HomeBrew
# Install using: brew install bash-completion.
if [ -n "`which brew`" ]; then
	BREW_COMPLETIONS=`brew --prefix`/etc/bash_completion
	if [ -f $BREW_COMPLETIONS ]; then
		. $BREW_COMPLETIONS
	fi
fi

### Fancy git in prompt
# Voir la doc de bash:
# man bash
# /PROMPTING  , n et Shift+n pour naviger dans les résultats de la recherche
PS1_BLACK='\[\033[01;30m\]'
PS1_RED='\[\033[01;31m\]'
PS1_GREEN='\[\033[01;32m\]'
PS1_YELLOW='\[\033[01;33m\]'
PS1_BLUE='\[\033[01;34m\]'
PS1_MAGENTA='\[\033[01;35m\]'
PS1_CYAN='\[\033[01;36m\]'
PS1_RESET='\[\033[00m\]'  # arrête la couleur

# Show unstaged (*) and staged (+) changes in __git_ps1
export GIT_PS1_SHOWDIRTYSTATE=true

# Changeout titlebar :-]
#TITLEBAR="\[\e]2;\w\a\]"

PS1=$TITLEBAR'\u@'$PS1_YELLOW'\h'$PS1_RESET'\w'$PS1_GREEN'$(__git_ps1)'$PS1_RESET'\$ '

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

export PATH="/usr/local/bin:$PATH"
