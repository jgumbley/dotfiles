export PATH="/usr/local/bin:$PATH"
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# activate menu selection
autoload -U compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt completeinword

# rbenv init
eval "$(rbenv init - zsh)"

# git status stuff
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

# prompt shuzz
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

alias vi='vim'
alias gs='git status'
alias gma='git commit -am'
alias q=exit
export govuk_dev_dist='lucid'

export MARKPATH=$HOME/.marks

function jump { 
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark { 
    rm -i $MARKPATH/$1 
}
function marks {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- 
}

bindkey '[D' emacs-backward-word     # alt-cursor-left
bindkey '[C' emacs-forward-word      # alt-cursor-right
bindkey ' ' magic-space              # history completion with space too

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias ports='netstat -pntl'

# virtualenv

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# such alias
alias such=git
alias very=git
alias wow='git status'
