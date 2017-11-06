# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/plumrain/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="bigeagle"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump osx brew zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# original bash_profile start################################################
#enables colorfor iTerm
export TERM=xterm-256color

#set manually path for fontconfig(/etc/fonts works for Linux installations, but OS X XQuartz goes to different place)
export FONTCONFIG_PATH=/opt/X11/lib/X11/fontconfig
export SPARK_HOME=/Users/plumrain/Applications/spark-2.0.0-bin-hadoop2.7
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.1-src.zip:$PYTHONPATH

export EDITOR='vim'

#历史记录中删除连续重复指令
HISTCONTROL=ignoredups

#export http_proxy=http://127.0.0.1:1080
#export https_proxy=$http_proxy

export PATH=~/Applications/BiliDan:"$PATH"
export PATH=/usr/local/Cellar/smlnj/110.78/bin:"$PATH"
export PATH=/Users/plumrain/.local/bin:"$PATH"
export PATH="/Users/plumrain/anaconda2/bin:$PATH"

alias py2='/usr/bin/python'
#alias python='/usr/bin/python'
alias pip2='/usr/local/bin/pip'
alias py3='/Users/plumrain/anaconda3/bin/python'
alias py3='/Users/plumrain/anaconda3/bin/python'
alias l='ls -al'
#alias cod='cd ~/CodeTemp'
#alias blog='cd /Users/plumrain/LMH/Hexo/Merlinhool'
alias hes='hexo clean; hexo g; hexo s'
alias hesd='hexo clean; hexo g; hexo s --draft'
alias VPS='ping 192.241.162.252'
alias rmhask='rm *.hi; rm *.o'
alias mkt='mkdir temp; cd temp'
alias gpup='server5@111.161.7.20:/home/server5/experiments/'
alias dmg='ssh dmgroup@10.103.242.202'
alias meg='ssh -CAXY -D 7071 exp.liminghao.brw@brain.megvii-inc.com'
alias megvm='ssh -CAXY liminghao-train.liminghao.brc@bj-a.brainpp.ml'
alias server='ssh -D 7071 lmh@10.103.241.233'
serv='lmh@10.103.241.233'

if ! pgrep -u $USER ssh-agent > /dev/null; then
    [ -d ~/.config ] || mkdir -v ~/.config
    ssh-agent > ~/.config/ssh-agent-thing
    echo "ssh-agent started"
fi
eval $(<~/.config/ssh-agent-thing) > /dev/null

# original bash_profile end################################################

alias -s cpp=vim
alias -s py=vim
alias -s md=code
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

# plugins
## zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# hash
hash -d blog='/Users/plumrain/LMH/Hexo/Merlinhool'
hash -d code='/Users/plumrain/CodeTemp'
