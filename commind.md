#close ipv6  temp
sudo sh -c 'echo 1 > /proc/sys/net/ipv6/conf/eth0/disable_ipv6' 

#view port occupancy
netstat -anp | grep port

