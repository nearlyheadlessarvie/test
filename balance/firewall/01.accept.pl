# The next line enables ssh logins from the LAN to the router
$B->iptables(["-A INPUT -p tcp -s $_ --syn --dport ssh -j ACCEPT","-A INPUT -p tcp -m tcp -s $_ --dport mysql -j ACCEPT"]) foreach map { $B->net($_) } ($B->lan_services);
