#!/bin/bash

mytitle="Server Manager [TapLauncher Alpha]"
echo -e '\033]2;'$mytitle'\007'

whiptail --yesno "Do you want to start the server? To safely stop the server, you should type 'stop' at the server command prompt and then press Ctrl+C when told to." 10 50
if [ $? -eq 0 ]
then while true
do #It loops forever! Basically, if the server exits or crashes, it'll autorestart unless you Ctrl+C.
clear
echo "[INFO]: Starting server..."
echo
#Type the command that you want to be executed below these comments.
#The defaunt command launches "Spigot.jar" and gives it 1GB of memory.
#Change the Spigot.jar accordingly if it has a different name or isn't located in the same folder as this script.
java -Xmx1024M -Xms1024M -jar Spigot.jar
#The lines below handle restarts and crashes. You typically don't have to edit this.
if [ $? -eq 0 ]
then echo "[INFO]: Server was succesfully stopped."
whiptail --yesno "Do you want to restart the server (yes) or quit (no)?" 10 50  
else
echo "[WARN]: It seems that the server crashed."
fi
if [ $? -eq 0 ]
then
echo "[INFO]: Server is restarting after your set amount of seconds. Press Ctrl+C to cancel."
sleep 10 #Time is in seconds. This can change it accordingly.
else
echo "[INFO]: Quitting."
sleep 1
exit
fi
done
fi
