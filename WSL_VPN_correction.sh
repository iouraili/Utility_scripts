#!/usr/bin/env bash

# run this script as superuser (sudo -s)
/mnt/c/Windows/system32/ipconfig.exe /all | grep --color=auto "DNS Servers" | cut -d ":" -f 2 | grep --color=auto -e '^ [0-9]' | sed 's/^/nameserver/' |tr -d '\r' | sudo tee /etc/resolv.conf > /dev/null
