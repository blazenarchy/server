#!/usr/bin/env sh

check=`screen -list | grep blazenarchy_waterfall`

if [ "$check" ]; then
    echo "waterfall is running."
    exit 1
else
    echo "waterfall is stopped."
    exit 0
fi
