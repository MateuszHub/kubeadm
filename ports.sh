# Inbound traffic
iptables -I INPUT -i lo -m comment --comment 'Permit loopback traffic' -j ACCEPT
iptables -I INPUT -m state --state ESTABLISHED,RELATED -m comment --comment 'Permit established traffic' -j ACCEPT
iptables -I INPUT -p tcp --dport 5701:5711 -m comment --comment 'StorageOS' -j ACCEPT
iptables -I INPUT -p udp --dport 5711 -m comment --comment 'StorageOS' -j ACCEPT

# Outbound traffic
iptables -I OUTPUT -o lo -m comment --comment 'Permit loopback traffic' -j ACCEPT
iptables -I OUTPUT -d 0.0.0.0/0 -m comment --comment 'Permit outbound traffic' -j ACCEPT
