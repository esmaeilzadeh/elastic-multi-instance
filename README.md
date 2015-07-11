# elastic-multi-instance
This zero config shell script helps you to setup 3 instances (1 master with two replica) of elastic search on a single machine with using 2 upstart config files.
#configure multiple service of elasticserver on a single machine:
sudo ./install.sh
#configure ip table for restrict access to elastic search port:
sudo iptables -A INPUT -s 127.0.0.1/32 -p tcp -m tcp --dport 9200:9400 -j ACCEPT
sudo iptables -A INPUT -s 127.0.0.1/32 -p tcp -m tcp --dport 9200:9400 -j ACCEPT
sudo iptables -A INPUT -s WEBSERVER/32 -p tcp -m tcp --dport 9200:9400 -j ACCEPT
sudo iptables -A INPUT -p tcp -m tcp --dport 9200:9400 -j DROP
you should replace WEBSERVER with ip of webserver or any other client that you want elasticsearch service visible for them




sudo stop elasticsearch
sudo start elasticsearch

check elasticsearch service is still up
