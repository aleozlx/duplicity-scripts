#!/bin/bash

# sudo apt install libssl-dev
# sudo pip2 install paramiko

if ssh research -q exit ; then

duplicity --verbosity notice \
	--full-if-older-than 60D \
	--num-retries 3 \
	--asynchronous-upload \
	--volsize 100 \
	--log-file ./duplicity.log \
	--exclude-filelist ./ignore \
	~/ rsync://research/Backup/CyberpowerPC

else

echo "Can't establish connection to backup server."

fi

