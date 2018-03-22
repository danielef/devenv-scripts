#
# Bash Aliases and Configurations
# Daniel Estevez <daniel.ef@gmail.com>
#

# Aliases
alias ls='ls -G'
alias github='/Applications/GitHub\ Desktop.app/Contents/MacOS/GitHub\ Desktop'
alias finder='open -a Finder ./'
alias emacs='/usr/local/opt/emacs/Emacs.app/Contents/MacOS/Emacs --no-splash --fullscreen'

alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version"
alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"


# Application directories
# MacTex
export MACTEX_DIR='/usr/local/texlive/2015/bin/x86_64-darwin/'

# PostgreSQL from http://postgresapp.com/
export PGAPP_DIR='/Applications/Postgres.app/Contents/Versions/latest/bin/'

# Prompt
export CLICOLOR=1
export TERM='xterm-color'

# Source hightlight (pip install Pygments) 
export LESSOPEN="| pygmentize -g %s"
export LESS=' -R '

# Path
export PATH=$PATH:$MACTEX_DIR:$PGAPP_DIR

# Turn the prompt symbol red if the user is root
if [ $( id -u ) -eq 0 ];
then # you are root, make the prompt red
    export PS1='\[\e[1;31m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
else
    export PS1='\[\e[1;32m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
fi
