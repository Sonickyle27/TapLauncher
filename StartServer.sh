#!/bin/bash

mytitle="Minecraft Server Manager"
echo -e '\033]2;'$mytitle'\007'

while true
do
clear
echo "[INFO]: Starting server..."
echo
#Type the command that you want to be executed here.
#The defaunt command launches "Spigot.jar" and gives it 1GB of memory.
#Change the Spigot.jar accordingly if it has a different name or isn't located in the same folder as this script.
java -Xmx1024M -Xms1024M -jar Spigot.jar
echo
echo "[INFO]: Server was either stopped manually, or crashed."
echo "[INFO]: Server is restarting in 30 seconds. Press Ctrl+C to cancel."
#Time is in seconds. You can change it accordingly.
sleep 30
done
