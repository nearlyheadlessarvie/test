#!/bin/sh

# The contents of this directory will be run after all other commands
# are issued by load_balance.pl
$B->sh("echo 2 > /proc/sys/net/ipv4/conf/lo/rp_filter");
$B->sh("echo 2 > /proc/sys/net/ipv4/conf/$_/rp_filter") foreach map {$B->dev($_)} ($B->lan_services);
