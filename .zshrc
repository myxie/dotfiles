##############################################################################
# SETTING UP THE .zhsrc 
# ----------------------
# It's assumed that I (you?) have cloned this from the dotfiles repository.  
# There are a few 'steps' to follow that help with the setup and make it more 
# interchangeable. 
#
# 
# RATIONALE 
# --------- 
# I want a single .zshrc/.bashrc file that I can use across different machines;
# this is especially useful with the various remote-systems I use in the HPC 
# world. However, it ended up being a yak-shaving endeavour trying to get 
# anything like this compatible between zsh and bash with some form of setup
# script. Hence, a checklist! 
#
# CORE FILES
# -----------
# 
# - .zshrc or .bashrc (depending on system support)
# - .env (stores Environment variables)
# - .vimrc (self evident)
# - helpers.sh (basic and forever evolving helper functions)
# - pearls.md (programming and shell 'pearls' that I always forget)
#
# APPLICATIONS
# ------------
# Install necessary apps for effective development (assuming permissions)
#  - [ ] sudo apt install vim curl shellcheck 
#  - [ ] sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
#  
#
# EXPORTS
# -------------------------
# These are dependent on the environment and therefore even more difficult to
# keep synchronised. So I don't try to! Copy ~/.env, wich has some placeholders
# and fill them in/update them based on the machine's requirements. 
#
# - [ ] cp .env ~/.env
# - [ ] Update & add `exports` in ~/.env
# - [ ] souce ~/.env
#
# SYMBOLIC LINKS
# --------------
# I had previously had a whole syncing function to go between the ~/.zshrc and
# $DOTFILES directory, but in hindsight that was ridiculous. Symbolic links 
# are easily the best approach.  
#
# - [ ] ln -s $DOTFILES/.zshrc ~/.zshrc
# - [ ] ln -s $DOTFILES/.vimrc ~/.vimrc
# 
# SOURCE FILES
# --------------
# 
# - [ ] . ~/.zshrc
#
# And that's a wrap! 
#
##############################################################################

##############################################################################
# EXPORT MANAGEMENT
##############################################################################

source ~/.env 

##############################################################################
# FUNCTION MANAGEMENT
##############################################################################

source $DOTFILES/helpers.sh 

##############################################################################
# oh-my-zsh setup 
##############################################################################
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="geoffgarside"
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
source $ZSH/oh-my-zsh.sh

echo "Loaded: .zshrc"