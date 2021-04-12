# Source global definitions
if [ -f /etc/bash/bashrc ]; then
	. /etc/bash/bashrc
fi

export PS1='\[\e[0;31m\][\[\e[m\]\[\e[0;33m\]\u\[\e[m\]\[\e[0;32m\]@\[\e[m\]\[\e[0;34m\]\h\[\e[m\] \[\e[0;35m\]\W\[\e[m\]\[\e[0;31m\]]\[\e[m\]\$ '

#---------------------------------------------------#
# Path                                              #
#---------------------------------------------------#
export PATH=$PATH:$HOME/desktop/software/scripts

#---------------------------------------------------#
# Aliases 			                                #
#---------------------------------------------------#
alias ll='ls -lah'
alias xclip='/usr/bin/xclip -selection clipboard'

#---------------------------------------------------#
# Xdg base dir                                      #
#---------------------------------------------------#
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

#---------------------------------------------------#
# Vim                                               #
#---------------------------------------------------#
export VIMINIT=":source $XDG_CONFIG_HOME/vim/vimrc"
export FZF_DEFAULT_COMMAND='fd --type f --exclude node_modules' 

#---------------------------------------------------#
# Postgresql                                        #
#---------------------------------------------------#
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

#---------------------------------------------------#
# GO                                                #
#---------------------------------------------------#
export GOPATH="$XDG_DATA_HOME/go"
export GOBIN="$GOPATH/bin"

#---------------------------------------------------#
# Node & npm                                        #
#---------------------------------------------------#
export PATH=$PATH:/$XDG_DATA_HOME/npm/bin
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"

#---------------------------------------------------#
# GPG                                               #
#---------------------------------------------------#
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"

#---------------------------------------------------#
# Misc                                              #
#---------------------------------------------------#
export HISTFILE="$XDG_DATA_HOME/bash/history" #bash_history
export LESSHISTFILE="-" #less_history
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" #Xauthority
