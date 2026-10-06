#!/bin/bash
echo "======"
echo "Nexvion Environment Setup"

echo "Checking Docker..."
if command -v docker >/dev/null 2>&1
then
   echo "Docker is installed."
   docker --version
else
   echo "Docker is not installed."
   exit 1
fi
echo "Creating required directories..."
mkdir -p ../logs
mkdir -p ../backup
echo "Setup completed successfully."



