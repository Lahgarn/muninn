#!/bin/bash

if [ "$1" = "staging" ]; then
    DEST=staging
else
    DEST=master
fi

sftp sastre-sftp@209.250.233.227:/muninn/$DEST <<EOF
    put -R ./output/* ./
EOF
