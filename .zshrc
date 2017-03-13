# Path to your oh-my-zsh installation.optopt

export NODE_BIN=$HOME/.node_modules
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export ANDROID_SDK=/media/essd/Android/Sdk
export ANDROID_NDK=/media/essd/Android/android-ndk-r10e
export ANDROID_BUILD_TOOLS=$ANDROID_SDK/build-tools/23.0.1/
export ANDROID_PLATFORMS=$ANDROID_SDK/platforms
export ANDROID_PLATFORM_TOOLS=$ANDROID_SDK/platform-tools
export ANDROID_TOOLS=$ANDROID_SDK/tools
export ANDROID_GDB=$ANDROID_NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/Android/Sdk/tools/lib
export ANDROID_TOOLCHAINS_BIN=/opt/Android/RemoteNDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin
export REENSC=/home/razaina/Tools/reensc
export PATH=$PATH:$ANDROID_PLATFORM_TOOLS:$ANDROID_NDK:$ANDROID_SDK:$ANDROID_PLATFORMS:$ANDROID_TOOLS:$LD_LIBRARY_PATH:$ANDROID_GDB:$ANDROID_TOOLCHAINS_BIN:$ANDROID_BUILD_TOOLS:$REENSC:$NODE_BIN:$NODE_BIN/node_modules:~/bin:~/.npm-global/bin
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="bureau"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git battery debian github gnu-utils mercurial python ruby screen sudo svn tmux vim-interaction vi-mode vundle git-extras)
source $ZSH/oh-my-zsh.sh
# User configuration
#export PATH="/home/razaina/android-sdks/platform-tools/:/home/razaina/android-sdks/tools/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/razaina/Gits/AndBug/lib:/home/razaina/android-ndk-r10d:/home/razaina/Development/android-sdk-linux:/home/razaina/Development/android-sdk-linux/platforms:/home/razaina/Development/android-sdk-linux/tools:/home/razaina/Development/android-sdk-linux/tools/lib:/home/razaina/idasdk66/bin/:/home/razaina/Hexagon_Tools/src/source/:/home/razaina/android-ndk-r10d/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gdb:/home/razaina/ida-6.6/:/home/razaina/bin:/sbin:/usr/sbin:/usr/local/sbin"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/neko
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
 export LANG=en_US.UTF-8
 #Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
# source $HOME/.zsh/bindkeys.zshrc
source $HOME/.zsh/modules.zshrc
source $HOME/.zsh/options.zshrc
source $HOME/.zsh/completions.zshrc
source $HOME/.zsh/alias.zshrc
# source $HOME/.zsh/locales.zshrc
source $HOME/.zsh/export.zshrc
source $HOME/.zsh/functions.zshrc
source $HOME/.zsh/misc.zsh
#source $HOME/.zsh/prompt2.zshrc
#if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    #source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
#fi
alias grep="/usr/bin/grep $GREP_OPTIONS"
alias vi="vim"
alias f="find . -iname"
unset GREP_OPTIONS
#exec startx
eval $(dircolors -b $HOME/.dircolors)

#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    #ssh-agent > ~/.ssh-agent-thing
#fi
#if [[ "$SSH_AGENT_PID" == "" ]]; then
    #eval "$(<~/.ssh-agent-thing)"
#fi
#
#
#
#
## Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
fi

# Start the gpg-agent if not already running
if ! pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
  gpg-connect-agent /bye >/dev/null 2>&1
fi

# Set GPG TTY
export GPG_TTY=$(tty)

# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null

PATH=$PATH:/home/razaina/bin
PATH=$PATH:/home/razaina/AA;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 801CFDFE-84E6-1501-4300-6C267A43C989
