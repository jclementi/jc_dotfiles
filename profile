# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

PROMPT_DIRTRIM=2
TERM=screen-256color

CLASSPATH=/home/jacob/documents/code/java/classpath
JAVA_HOME=/usr/lib/jvm/java-8-oracle

alias ls="ls -l"
alias ll="ls -l"
alias la="ls -la"

mdc() {
  mkdir -p "$1"
  cd "$1"
}

alias shoryuken='sudo $(fc -ln -1)'
alias SHORYUKEN='sudo $(fc -ln -1)'

