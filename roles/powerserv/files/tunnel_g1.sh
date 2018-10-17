#!/bin/bash

ssh -J jklein@zoroastro.to.infn.it ali47xl \
   -w 1:1 \
   -o PermitLocalCommand=yes \
   -o LocalCommand="ip link set tun1 up; ip route add 10.161.1.5 dev tun1" \
   -o ServerAliveInterval=60 \
   'ip link set tun1 up; ip addr add 10.161.1.5/16 dev tun1; ip route add 10.162.0.0/16 dev tun1'
