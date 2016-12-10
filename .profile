# .profile

# add something I use
alias ll="ls -l"
PS1="\u@\H:\w$ "
export PS1

SYS=`uname`;
if [[ $SYS == 'Darwin' ]];
then
  echo "Hello, you are on Mac ;)";

  # I want ViM as an editor when git commit
  export EDITOR=vim;

  # MacPorts Installer addition on 2015-01-21_at_18:33:20: adding an appropriate PATH variable for use with MacPorts.
  export PATH="$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH"
  # Finished adapting your PATH environment variable for use with MacPorts.
elif [[ $SYS == 'OpenBSD' ]];
then
  echo "Do not worry, be puffy ;^)";
else
  echo "What is this?";
  exit 1;
fi
