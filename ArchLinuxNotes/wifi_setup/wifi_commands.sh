#!/bin/sh
interface="wlo1"

#grep => g/RE/p globally search for RE and print it
lsmod | grep -i wifi
#this command loads all the module that is loaded in the kernel and use "|" to  send the output of lsmod to grep, and grep use all the output from lsmod to search for all the patterns in text files.
# in this example
# -i : dont care caps
# wifi : keyword

lspci -k
ip link set $interface up # bring the interface up
ip link show $interface
iw dev # get the name of your wireless interface
iw dev $interface link # check link status
iw dev $interface station dump # get statistic information
iw dev $interface scan | less # scan for wifi
iw dev $interface set type ibss # set the operating mode to ibss to connect an ad-hoc network
# Changing the operating mode on some cards might require the wireless interface to be down (ip link set interface down).

iw dev $interface set type ap # set the operating mode to ap to connect an ad-hoc network
# Changing the operating mode on some cards might require the wireless interface to be down (ip link set interface down).

target_SSID="Xiaomi_EC10"
iw dev $interface connect $target_SSID

#execute this if wlo1 exist in "ip a" but options for network connection disappears after playing with wifi crack operations
sudo systemctl restart NetworkManager
