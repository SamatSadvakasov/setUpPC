#!/bin/bash
# GET SSH key
if [ $# -eq 0 ]; then
    echo "No arguments provided. In order set password. For Example ./setUP.sh Passw0rd"
    exit 1
fi

mkdir -p ~/.ssh
DUMMY=$(ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N '')
cat ~/.ssh/id_ed25519.pub
# SET UP git config
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
# SET UP AUTO LOCK
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.screensaver lock-delay 60
# SET UP PASSWORD
echo -e "$1\n$1" | passwd
