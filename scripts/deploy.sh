#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa_pc \
    target/sweater-1.0-SNAPSHOT.jar \
    pc@192.168.0.1:/home/pc/projects

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa_pc pc@192.168.0.1 << EOF
pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye'