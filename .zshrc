autoload -U compinit
compinit
setopt completeinword

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz vcs_info
 
zstyle ':vcs_info:*' stagedstr '%F{28}●'
zstyle ':vcs_info:*' unstagedstr '%F{11}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
zstyle ':vcs_info:*' enable git svn
precmd () {
	    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
			zstyle ':vcs_info:*' formats ' [%F{green}%b%c%u%F{blue}]'
		} else {
		zstyle ':vcs_info:*' formats ' [%F{green}%b%c%u%F{red}●%F{blue}]'
	}

	vcs_info
}

setopt prompt_subst
PROMPT='%F{blue} %c${vcs_info_msg_0_}%F{blue} %F $ %{$reset_color%}'

function zle-line-init zle-keymap-select {
	RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/ }"
	RPS2=$RPS1
	zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
autoload select-word-style
select-word-style shell

if [[ -x "`whence -p dircolors`" ]]; then
	eval `dircolors`
	alias ls='ls -F --color=auto'
else
	alias ls='ls -F'
fi

HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt incappendhistory 
setopt sharehistory
setopt extendedhistory

setopt extendedglob
unsetopt caseglob

setopt interactivecomments # pound sign in interactive prompt

setopt auto_cd

REPORTTIME=10
export EDITOR=vim
