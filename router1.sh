ip link set dev enp0s8 up
ip addr add 192.168.0.129/25 dev enp0s8
ip addr add 192.168.1.1/23 dev enp0s8

ip link set dev enp0s9 up
ip addr add 10.0.0.5/30 dev enp0s9

ip route add 10.0.0.4/30 via 10.0.0.6
ip route add 192.168.0.0/16 via 10.0.0.6

sysctl -w net.ipv4.ip_forward=1 > /dev/null
