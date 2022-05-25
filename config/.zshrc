zmodload zsh/zprof
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# User configuration
# Java things
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Add dotnet tools to path
export PATH=$HOME/.dotnet/tools:$PATH

# plugins
export NVM_LAZY_LOAD="true"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=5"

# source ~/.zplug/init.zsh

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-nvm)

. /usr/local/opt/asdf/libexec/asdf.sh

# Set JAVA_HOME environment variable for zsh
. ~/.asdf/plugins/java/set-java-home.zsh

source $ZSH/oh-my-zsh.sh
