#export LANG=ja_JP.UTF-8

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/sbin
export PATH=$PATH:$HOME/usr/bin
export MANPATH=/usr/local/share/man:/usr/local/man:/usr/share/man

export GOPATH=$HOME/usr/go:$HOME/Workspace/go
export PATH=$HOME/usr/go/bin:$HOME/Workspace/go/bin:$PATH

find-grep () { find . -type f -print | xargs grep -n --binary-files=without-match $@ }

alias vim='nvim'
alias clr='clear'
alias ls='ls -G'
alias la='ls -la'

# git current branch
function prompt-git-current-branch {
        local name st color

        name=`git symbolic-ref HEAD 2> /dev/null`
        if [[ -z $name ]]
        then
                return
        fi
        name=`basename $name`
 
        st=`git status`
        if [[ -n `echo $st | grep "^nothing to"` ]]
        then
                color="green"
        else
                color="red"
        fi
 
        echo "%F{$color}[$name]%f"
}


if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

setopt prompt_subst

PROMPT='%B%K{blue}%F{white}%n@%m%f%k %F{blue}[%d]%f`prompt-git-current-branch`%b
%K{cyan} %B%#%b%k '

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt extended_history

LISTMAX=0

autoload -Uz compinit; compinit

zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

setopt auto_pushd 
setopt append_history
setopt auto_list
setopt list_packed
setopt auto_menu
setopt auto_param_keys
setopt auto_param_slash
setopt no_beep
setopt hist_ignore_dups
setopt hist_no_store
setopt hist_reduce_blanks
# setopt hist_ignore_spece
setopt hist_ignore_all_dups
setopt hist_verify
setopt no_list_types
setopt magic_equal_subst
setopt mark_dirs
setopt print_eight_bit
setopt share_history
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
export LS_COLORS='di=01;36'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
function chpwd() { ls }
setopt no_flow_control
autoload zed
