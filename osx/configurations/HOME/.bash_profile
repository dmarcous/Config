export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export GIT_WORKSPACE=~/git

alias ll='grc ls -l -color'
alias lt='grc ls -lhatr'
alias ..="cd .."
alias env='grc env'
alias cl='clear'

alias cdg='cd $GIT_WORKSPACE'
alias hist='history | grep'

alias rmds="sudo find . -name '.DS_Store' -depth -exec rm {} \;"

alias s3="aws s3"

alias gitAggressiveResetToMaster="git fetch origin; git reset --hard origin/master"

# Sublime editor
export EDITOR='subl -w'

# Airflow
export AIRFLOW_HOME=~/airflow
alias air_act='conda activate airflow'
alias air_up='airflow webserver -p 8080'
alias dact='conda deactivate'

# More aliases
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# Ignore global
git config --global core.excludesfile $GIT_WORKSPACE/.gitignore_global

# Colors
#export PS1="[\[\033[0;31m\]\t>\[\033[0;34m\]\h\[\033[0m\]:\[\033[0;37m\]\[\033[0;32m\]\u\[\033[0m\]]\w: "
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Java setup
export JAVA_HOME=$(/usr/libexec/java_home)
export LD_LIBRARY_PATH=$JAVA_HOME/jre/lib/server
export PATH=$PATH:$JAVA_HOME/bin
launchctl setenv JAVA_HOME $JAVA_HOME

# Colouriser
. /usr/local/etc/grc.bashrc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.bash.inc' ]; then source '~/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.bash.inc' ]; then source '~/google-cloud-sdk/completion.bash.inc'; fi

# Iterm2 shell magic
shopt -u extdebug
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '~/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "~/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "~/opt/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="~/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

