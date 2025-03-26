#!/bin/bash

# Navigate to the project directory
cd ~/Python_Projects/PinballWW2

# Navigate to the Scripts folder and activate the Python virtual environment
cd "~/Python_Projects/PinballWW2/Scripts" || exit
source activate

# Navigate back to the base directory
cd ..

# Navigate to the Machine folder
cd Machine || exit

# Run the required commands in separate terminal windows
gnome-terminal -- bash -c "pyenv exec mpf both; exec bash"
gnome-terminal -- bash -c "pyenv exec mpf monitor; exec bash"