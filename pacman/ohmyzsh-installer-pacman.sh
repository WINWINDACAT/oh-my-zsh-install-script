#!/bin/bash

while true; do

# Warnings to tell the user

echo "WARNING: THIS IS AN UNOFFICIAL EASY INSTALLATION SCRIPT FOR oh-my-zsh."

echo "WARNING 2: THIS WILL DESTROY ANY CURRENT .zshrc FILE!!"

# Added -r to shut code up, otherwise it will start screaming nonstop about backslashes, if it becomes an issue, please tell me.

read -rp "Do you want to proceed? (y/n) " yn # Simple y/n question to ask the user

case $yn in
	[yY] ) echo "Proceeding..."
		break;;
	[nN] ) echo "Cancelling..."
		exit;;

esac

done

echo "Verifying dependencies are installed..."

sudo pacman -S zsh git curl # Install dependencies

echo "Installing oh-my-zsh..."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # Install oh my zsh