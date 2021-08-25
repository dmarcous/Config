source ~/.fish_variables
source ~/.fish_aliases

git config --global core.excludesfile $GIT_WORKSPACE/.gitignore_global

launchctl setenv JAVA_HOME $JAVA_HOME

cd

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval ~/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

#conda activate [SOME ENV]