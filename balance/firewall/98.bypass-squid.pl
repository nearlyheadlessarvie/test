# do not proxy the following LOL ip
$B->iptables("-t nat -A PREROUTING -i eth1 -p tcp -m tcp --dport 80 -d 125.5.3.0/24 -j ACCEPT");
$B->iptables("-t nat -A PREROUTING -i eth1 -p tcp -m tcp --dport 443 -d 125.5.3.0/24 -j ACCEPT");
$B->iptables("-t nat -A PREROUTING -i eth1 -p tcp -m tcp --dport 80 -d 125.5.6.0/24 -j ACCEPT");

$B->iptables("-t nat -A PREROUTING -i eth1 -p tcp -m tcp --dport 80 -d 65.55.252.43 -j ACCEPT");
$B->iptables("-t nat -A PREROUTING -i eth1 -p tcp -m tcp --dport 443 -d 65.55.252.43 -j ACCEPT");

# for my $srv ($B->lan_services, $B->isp_sub_services)
#{
#  my $net = $B->net($srv);
#  next if $net == $_;
#  $B->iptables("-t nat -A PREROUTING -s $net -d $_ -j ACCEPT") foreach map {$B->net($_)} ($B->lan_services, $B->isp_sub_services);
#}
