args="/usr/local/bin/java -Xmx1G -Xms1G \
                    -XX:+UseConcMarkSweepGC \
                    -XX:ParallelGCThreads=4 -XX:+AggressiveOpts \
                    -DIReallyKnowWhatIAmDoingISwear \
                    -jar server.jar nogui"

if ./check_waterfall.sh; then
    cd waterfall
    echo "Starting waterfall..."
    screen -d -m -S blazenarchy_waterfall $args
    echo "Started waterfall."
    cd ..
fi
