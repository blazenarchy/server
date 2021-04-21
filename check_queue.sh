#!/usr/bin/env sh

check=`screen -list | grep blazenarchy_queue`

if [ "$check" ]; then
    echo "queue is running."
    exit 1
else
    echo "queue is stopped."
    exit 0
fi
