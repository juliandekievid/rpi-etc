#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

PS1='[\u@\h \W]\$ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

export YAOURT COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:
grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -ip'
export PS1="[\[\033[1;41m\]\u\[\033[0;1;7m\]@\[\033[0;1;44m\]\h\[\033[0m\] \W]# "
export LESS_TERMCAP_mb=$'/E[01;34m'  # Blinking -> bold blue
export LESS_TERMCAP_md=$'/E[01;34m'  # Bold (section name, cl option) -> blue
export LESS_TERMCAP_me=$'/E[0m'      # End bold/blinking
export LESS_TERMCAP_so=$'/E[01;44m'  # Standout pager -> bold white on blue
export LESS_TERMCAP_se=$'/E[0m'      # End standout
export LESS_TERMCAP_us=$'/E[01;31m'  # Underline - variables -> bold red
export LESS_TERMCAP_ue=$'/E[0m'      # End underline
export GROFF_NO_SGR=1
alias less='less -Si'
export VISUAL-"emacs"





