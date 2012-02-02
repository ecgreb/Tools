export PATH="/usr/local/code/android/tools:"$PATH
export PATH="/usr/local/code/android/platform-tools:"$PATH
export PATH="/usr/local/git/bin:"$PATH
export PATH="/Library/PostgreSQL/9.0/bin:"$PATH
export PATH="/usr/local/pear/bin:"$PATH

export JAVA_HOME="/Library/Java/Home"

alias ls='ls -G'
alias lr='ls -ulah'
alias rm='rm -i'
alias logcat='python /usr/local/utils/logcat.py'
alias size='du -sh'

export HISTSIZE=500
export HISTCONTROL=ignoreboth

function bash_git_branch
{
  git branch 2> /dev/null | grep \* | python -c "print '['+raw_input()[2:]+']'" 2> /dev/null
}

PS1="\[\033[0;31m\]\d \[\033[0;32m\]\@ \[\033[0;33m\]#\! \[\033[0;34m\]\w \[\033[0;35m\]\$(bash_git_branch) \[\033[0m\]\n$ "

export PS1=$PS1"\[\e]0;\u@\h:\w\a\]"

# Setting PATH for Python 2.7
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

clear
echo \"There are two hard things in computer science: cache invalidation, naming things,
echo and errors off by one.\" - Phil Karlton
echo
