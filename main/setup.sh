#!/bin/bash
cd plugins
wget $(cat ../plugins.txt | cut -d ',' -f2)
cd ..
# https://github.com/pl3xgaming/Purpur/
wget "https://ci.pl3x.net/job/Purpur/lastSuccessfulBuild/artifact/final/purpurclip-1060.jar"
mv purpurclip-1060.jar server.jar

