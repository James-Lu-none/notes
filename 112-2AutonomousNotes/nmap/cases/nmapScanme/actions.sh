# get the ip of http://scanme.nmap.org/
nslookup scanme.nmap.org

# james@debian:~/projects/tools/nmap$ nslookup scanme.nmap.org
# Server:         192.168.1.1
# Address:        192.168.1.1#53

# Non-authoritative answer:
# Name:   scanme.nmap.org
# Address: 45.33.32.156
# Name:   scanme.nmap.org
# Address: 2600:3c01::f03c:91ff:fe18:bb2f

# perform an aggressive scan
nmap -A 45.33.32.156
