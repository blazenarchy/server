#!/usr/bin/env sh
args="java -Xmx$1 -Xms$1 \
                    -XX:ParallelGCThreads=4 \
                    -DIReallyKnowWhatIAmDoingISwear \
                    -jar server.jar nogui"

if ./check_queue.sh; then
    cd queue
    echo "Starting queue..."
    screen -d -m -S blazenarchy_queue $args
    echo "Started queue."
    cd ..
fi
