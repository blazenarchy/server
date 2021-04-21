#!/usr/bin/env sh
cd plugins
rm *.jar
wget $(cat ../plugins.txt | cut -d ',' -f2)
cd ..
rm server.jar
# https://github.com/PaperMC/Waterfall
wget "https://papermc.io/api/v2/projects/waterfall/versions/1.16/builds/411/downloads/waterfall-1.16-411.jar"
mv waterfall-1.16-411.jar server.jar

