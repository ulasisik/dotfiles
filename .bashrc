PS1="\[$(tput bold)\]";
PS1+="\[$(tput setaf 012)\]\u@\h";
PS1+="\[$(tput sgr0)\]:";
PS1+="\[$(tput setaf 014)\]\w";
PS1+="\[$(tput sgr0)$\] ";
export PS1;

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

alias baggins="ssh ulas@144.122.38.75 -p 2275"
alias pypip="/usr/local/lib/pypy3.6-v7.0.0-osx64/bin/pip3.6"
