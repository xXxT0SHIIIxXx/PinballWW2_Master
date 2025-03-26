#!/bin/bash

# Exit on error
set -e

echo "Updating PinballWW2 project files..."

# Navigate to the project directory
cd ~/Python_Projects/PinballWW2

# 1. Delete old files/folder
rm -rf machine
rm -f requirements.txt
rm -f RunPinball_Linux.sh

# 2. Clone updated config repo
git clone https://github.com/xXxT0SHIIIxXx/PinballWW2_Master.git

# 3. Move updated files into place
mv PinballWW2_Master/machine ./
mv PinballWW2_Master/requirements.txt ./
mv PinballWW2_Master/RunPinball_Linux.sh ./

# 4. Clean up
echo "Cleaning up..."
rm -rf PinballWW2_Master

echo "Update complete!"