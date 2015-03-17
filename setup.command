#!/bin/bash

# Symlink .bash_profile
echo "Making Terminal symlinks..."
cd ~; rm -f .bash_profile; ln -s ~/Dropbox/settings/.bash_profile .bash_profile
echo "Finished!"
echo ""
# List out other useful things
echo "Things to install:"
echo "✓ chrome"
echo "✓ dropbox"
echo "- sizeup"
echo "- sublime text"
echo "- 1password"
echo "- time out free"
echo "- gitX"