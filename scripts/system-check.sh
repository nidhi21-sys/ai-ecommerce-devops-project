#!/bin/bash
echo "======"
echo "Nexvion System Check"
echo "======"
echo ""
echo "Hostname:"
hostname
echo ""
echo "Operating System:"
cat /etc/os-release | grep PRETTY_NAME
echo ""
echo "Disk Usage:"
df -h /
echo""
echo "Memory:"
free -h
echo ""
echo "Docker:"
docker --version
echo ""
echo "Docker-compose"
docker-compose version
echo ""
echo "Git:"
git --version
echo ""
echo "System check completed."


