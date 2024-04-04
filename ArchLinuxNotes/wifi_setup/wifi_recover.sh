#!/bin/sh
wifi_card_name="wlo1"

sudo ip link set $wifi_card_name down
sudo iw dev $wifi_card_name set type managed
sudo ip link set $wifi_card_name up
sudo systemctl restart NetworkManager
