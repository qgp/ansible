  503  ip link add name br0 type bridge
  505  ip link set dev br0 address d0:57:7b:8b:03:1c
  506  iw dev wlp2s0 set 4addr on
  507  ip link set enp0s25 master br0
  508  ip link set wlp2s0 master br0
