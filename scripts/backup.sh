#!/bin/bash
echo "======"
echo "Nexvion Backup"
echo "======"
cd ..
mkdir -p backup
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
tar --exclude="./backup" \
    --exclude="./git" \
    -czf "./backup/nexvion-$DATE.tar.gz."
echo "Backup created successfully."
ls -lh backup/


