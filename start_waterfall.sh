args="java -Xmx$1 -Xms$1 \
                    -XX:ParallelGCThreads=4 \
                    -DIReallyKnowWhatIAmDoingISwear \
                    -jar server.jar nogui"

if ./check_waterfall.sh; then
    cd waterfall
    echo "Starting waterfall..."
    screen -d -m -S blazenarchy_waterfall $args
    echo "Started waterfall."
    cd ..
fi
