#PS1="\W \! $ "

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PS1="\t\h@\W> "

export GOPATH=/Users/ondrejodchazel/projects/go


export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


alias l='ls -la'
alias ..='cd ..'

#source ~/projects/scripts/git-completion.bash

#bash ~/projects/scripts/git-completion.bash


export TOMCAT_HOME="/Users/ondrejodchazel/projects/memsource/apache-tomcat-7.0.47"
export M2_HOME=/usr/local/apache-maven/apache-maven-3.0.5
export M2=$M2_HOME/bin

export PATH=$M2:$PATH
export PATH=$PATH:/Users/ondrejodchazel/projects/go/bin

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
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

## Treex installation ##
#eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
