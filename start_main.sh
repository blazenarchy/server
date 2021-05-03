#!/usr/bin/env sh
args="java -Xmx6G -Xms6G \
                    -XX:ParallelGCThreads=4 \
                    -DIReallyKnowWhatIAmDoingISwear \
                    -jar server.jar nogui"

if ./check_main.sh; then
    cd main
    echo "Starting main..."
    screen -d -m -S blazenarchy_main $args
    echo "Started main."
    cd ..
fi
