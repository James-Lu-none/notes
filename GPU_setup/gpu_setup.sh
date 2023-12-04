#!/bin/sh
#find
lspci -k | grep -A 2 -E "(VGA|3D)"
