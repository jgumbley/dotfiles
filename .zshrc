autoload -U compinit
compinit
setopt completeinword
eval "$(rbenv init - zsh)"
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz vcs_info
 
zstyle ':vcs_info:*' stagedstr '%F{28}●'
zstyle ':vcs_info:*' unstagedstr '%F{11}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
precmd () {
        if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
            zstyle ':vcs_info:*' formats ' [%F{green}%b%c%u%F{reset}]%f'
        } else {
            zstyle ':vcs_info:*' formats ' [%F{green}%b%c%u%F{red}●%F{reset}]%f'
        }
        vcs_info
    }

setopt prompt_subst
PROMPT='%F{blue}%c${vcs_info_msg_0_}%F{reset} $ %f'

function zle-line-init zle-keymap-select {
  RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/ }"
  RPS2=$RPS1
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
autoload select-word-style
select-word-style shell

HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt incappendhistory 
setopt sharehistory
setopt extendedhistory

setopt extendedglob
unsetopt caseglob

setopt interactivecomments # pound sign in interactive prompt

setopt auto_cd
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
REPORTTIME=10
export CLICOLOR=1
export COLORFGBG='0;15'

alias gs='git status'
export govuk_dev_dist='lucid'
source /usr/local/bin/virtualenvwrapper.sh
