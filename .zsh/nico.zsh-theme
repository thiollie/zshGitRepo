function print_host {
  if [[ ${PWD} =~ sshfs ]]; then
    if [[ ${PWD} =~ sl2 ]]; then
      echo '%F{cyan} NANSL2'
  elif [[ ${PWD} =~ cca ]]; then
    echo '%F{yellow}% CC/IN2P3'
  else
    echo '%F{cyan}% undefined host'
  fi
  else
    echo '%F{white}% Local MB Pro'
  fi
}

function print_cc {
  if [[ `ls /sshfs/cca | wc -l` -gt 0 ]]; then
    echo '%F{green}% [cc : open]'
  else
    echo '%F{red}% [cc:closed]'
  fi
}

function print_sl2 {
  if [[ `ls /sshfs/sl2 | wc -l` -gt 0 ]]; then
    echo '%F{green}% [sl2:open]'
  else
    echo '%F{red}% [sl2:closed]'
  fi
}

function print_pwd {
  echo %F{blue}% ${PWD}
}

PROMPT='$(print_host) => $(print_pwd) $(git_prompt_info) %{$reset_color%}
-> '
RPROMPT='$(print_cc) $(print_sl2)   %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" git: %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""
