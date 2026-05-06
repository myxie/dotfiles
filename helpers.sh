#
# Helper scripts and aliases for convenience use in shell environment 
# To be used inside a .bashrc/.zshrc etc. configuration file 
#
##############################################################################
# ALIAS MANAGEMENT
##############################################################################
# The classics
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# An admission of pure laziness
alias resource='source ~/${SOURCE}'
alias check='echo "Exit code:" $?'
alias py="python3"
alias cl="clear"


##############################################################################
# Hello, World function for confirming scripts are correctly sourced. 
# 
# Silly, but there's nothing like the classics. 
##############################################################################
function Hello(){
	echo "Hello, World"
}

##############################################################################
# Get the size of the current directory 
##############################################################################
function DirSizes(){
	du -h --max-depth=1 .
}

##############################################################################
# pearls search term wrappers
##############################################################################

function Pearls() {
    DEFAULT_DEPTH=1
    VAR=${2-$DEFAULT_DEPTH}
    grep -i "$1" "$PEARLS" -A "$VAR"
}