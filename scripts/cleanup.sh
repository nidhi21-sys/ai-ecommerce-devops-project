#!/bin/bash
echo "======"
echo "Nexvion Cleanup"
echo "======"

echo "Removing temporary files..."
find . -type f -name "*.tmp" -delete
find . -type f -name "*.log" -delete
echo "Removing unused Docker resources..."
docker image prune -f
echo "Cleanup Completed"

