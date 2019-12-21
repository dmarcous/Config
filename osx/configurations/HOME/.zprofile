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

# Java setup
export JAVA_HOME=$(/usr/libexec/java_home)
export LD_LIBRARY_PATH=$JAVA_HOME/jre/lib/server
export PATH=$PATH:$JAVA_HOME/bin
launchctl setenv JAVA_HOME $JAVA_HOME

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#The fuck
eval "$(thefuck --alias)"

# Colouriser
. /usr/local/etc/grc.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.zsh.inc' ]; then source '~/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then source '~/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('~/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "~/anaconda3/etc/profile.d/conda.sh" ]; then
        . "~/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="~/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Setup correct permisions for zsh conf files
compaudit | xargs chmod g-w,o-w

