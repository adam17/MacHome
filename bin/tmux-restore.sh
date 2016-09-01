#!/bin/sh

# pomysł pochodzi z http://superuser.com/questions/440015/restore-tmux-session-after-reboot
# This is a very trivial sample. 
# You can create multiple windows, panes, and the like before you attach.

SESSIONNAME="mojtmux"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
then
  tmux new-session -s $SESSIONNAME -n start -d
  tmux send-keys -t $SESSIONNAME "~/bin/tmux-restore.sh" C-m
fi

tmux attach -t $SESSIONNAME
