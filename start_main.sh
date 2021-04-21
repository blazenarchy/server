#!/usr/bin/env sh
args="java -Xmx10G -Xms10G \
                    -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalPacing \
                    -XX:ParallelGCThreads=4 -XX:+AggressiveOpts \
                    -DIReallyKnowWhatIAmDoingISwear \
                    -jar server.jar nogui"

if ./check_main.sh; then
    cd main
    echo "Starting main..."
    screen -d -m -S blazenarchy_main $args
    echo "Started main."
    cd ..
fi
