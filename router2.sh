sysctl -w net.ipv4.ip_forward=1 > /dev/null

ip link set enp0s9 up
ip addr add 10.0.0.6/30 dev enp0s9

ip link set enp0s8 up
ip addr add 192.168.3.1/24 dev enp0s8

ip route add 10.0.0.4/30 via 10.0.0.5
ip route add 192.168.0.0/16 via 10.0.0.5
