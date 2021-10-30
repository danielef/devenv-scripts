#
# Bash Aliases and Configurations
# Daniel Estevez <daniel.ef@gmail.com>
#

# Aliases
alias ls='ls -G'
alias finder='open -a Finder ./'

# emacs-mac
# brew tap railwaycat/emacsmacport
# brew install emacs-mac
# brew untap railwaycat/emacsmacport
# alias emacs='/usr/local/opt/emacs-mac/Emacs.app/Contents/MacOS/Emacs --no-splash'

# emacs standard
# brew install emacs --with-cocoa
# alias emacs='/usr/local/opt/emacs/Emacs.app/Contents/MacOS/Emacs --no-splash --fullscreen'

# emacs > 24 supports cocoa by default
alias emacs='open -a Emacs --args'

alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"

# 
export BASH_SILENCE_DEPRECATION_WARNING=1

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

# Curl
export CURL_DIR=/usr/local/opt/curl/bin

# Path
export PATH=$PATH:$MACTEX_DIR:$PGAPP_DIR:$CURL_DIR

# Turn the prompt symbol red if the user is root
if [ $( id -u ) -eq 0 ];
then # you are root, make the prompt red
    export PS1='\[\e[1;31m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
else
    export PS1='\[\e[1;32m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
fi
#export PATH="/usr/local/opt/python@3.8/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
