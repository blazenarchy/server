#!/usr/bin/env sh

check=`screen -list | grep blazenarchy_main`

if [ "$check" ]; then
    echo "main is running."
    exit 1
else
    echo "main is stopped."
    exit 0
fi
