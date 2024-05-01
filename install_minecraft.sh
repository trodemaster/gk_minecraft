#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
shopt -s nullglob nocaseglob

# modern bash version check
! [ "${BASH_VERSINFO:-0}" -ge 4 ] && echo "This script requires bash v4 or later" && exit 1

# path to self and parent dir
SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

sudo apt install -y openjdk-21-jre-headless

wget https://piston-data.mojang.com/v1/objects/79493072f65e17243fd36a699c9a96b4381feb91/server.jar -O ~/code/gk_minecraft/minecraft_server_1.20.5.jar

tar -xvf /mnt/backups/gk_minecraft.tgz --strip-components=1 -C ~/code/gk_minecraft/

exit 0