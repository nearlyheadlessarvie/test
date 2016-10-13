
# redirect http traffic to squid proxy
$B->iptables('-t nat -A PREROUTING -i eth1 -p tcp --dport 80 -j REDIRECT --to-port 3126');
# redirect https traffic to squid proxy
$B->iptables('-t nat -A PREROUTING -i eth1 -p tcp --dport 443 -j REDIRECT --to-port 3127');

# redirect http traffic to squid proxy
#$B->iptables('-t nat -A PREROUTING -i eth2 -s 192.168.2.0/24 -p tcp --dport 80 -j REDIRECT --to-port 3126');
# redirect https traffic to squid proxy
#$B->iptables('-t nat -A PREROUTING -i eth2 -s 192.168.2.0/24 -p tcp --dport 443 -j REDIRECT --to-port 3127');

