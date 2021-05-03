#!/usr/bin/env sh
args="/usr/local/bin/java -Xmx2G -Xms2G \
                    -XX:+UseConcMarkSweepGC \
                    -XX:ParallelGCThreads=4 -XX:+AggressiveOpts \
                    -DIReallyKnowWhatIAmDoingISwear \
                    -jar server.jar nogui"

if ./check_queue.sh; then
    cd queue
    echo "Starting queue..."
    screen -d -m -S blazenarchy_queue $args
    echo "Started queue."
    cd ..
fi
