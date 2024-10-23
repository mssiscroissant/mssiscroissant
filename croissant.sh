#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <fichier_ascii_art>"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "Le fichier $1 n'existe pas."
  exit 1
fi

scroll() {
  local lines
  lines=$(tput lines)
  while IFS= read -r line; do
    echo "$line"
    sleep 0.09
    if [ "$(tput lines)" -lt "$lines" ]; then
      sleep 0.5
      clear
    fi
  done < "$1"
}

trap '' SIGINT SIGTSTP
stty -echoctl
clear
while true;
do
	scroll "$1"
done
