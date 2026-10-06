#!/bin/bash
echo "======"
echo "Stopping Nexvion Application"
echo "======"
cd ..
docker-compose down
echo "Nexvion application stopped."
