#
# Bash Aliases and Configurations
# Daniel Estevez <daniel.ef@gmail.com>
#

# Aliases
alias ls='ls -G'
alias github='/Applications/GitHub\ Desktop.app/Contents/MacOS/GitHub\ Desktop'
alias finder='open -a Finder ./'

# Prompt
export CLICOLOR=1
export TERM='xterm-color'

# Turn the prompt symbol red if the user is root
if [ $( id -u ) -eq 0 ];
then # you are root, make the prompt red
    export PS1='\[\e[0;31m\]\u\[\e[0m\]@\[\e[0;31m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
else
    export PS1='\[\e[0;32m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
fi
