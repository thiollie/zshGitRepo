#!/bin/zsh

# Killer: share history between multiple shells
# setopt SHARE_HISTORY
#
# # If I type cd and then cd again, only save the last one
 setopt HIST_IGNORE_DUPS
#
# # Even if there are commands inbetween commands that are the same, still only save the last one
 setopt HIST_IGNORE_ALL_DUPS

source $HOME/.zsh/zsh_config
source $HOME/.zsh/zsh_alias
source $HOME/.zsh/zsh_ohmzsh
source $HOME/.zsh/zsh_perso

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# source ~/.iterm2_shell_integration.zsh

