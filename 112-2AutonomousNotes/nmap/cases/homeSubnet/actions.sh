# first we need to get the ip of my home subnet
sudo ifconfig

# scan the ip addr with grep to filter out 
nmap -A - 192.168.0.0-255 -vv >./result.txt
