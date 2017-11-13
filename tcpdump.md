#listen udp port 
tcpdump udp port 111

#save the tcpdump capture result -w file

tcpdump udp port 111 -w dump.pcap
