#!/bin/bash
userdel elasticsearch
rm -r /home/elasticsearch
mkdir /home/elasticsearch
useradd -d /home/elasticsearch -m elasticsearch
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.6.0.tar.gz
mkdir /home/elasticsearch
cp ./elastic /home/elasticsearch -R
tar -xvzf elasticsearch-1.6.0.tar.gz
cp -r elasticsearch-1.6.0 /home/elasticsearch/elastic/main
cp elasticsearch.conf /etc/init/elasticsearch.conf
cp elasticsearch-instance.conf /etc/init/elasticsearch-instance.conf
chown elasticsearch:elasticsearch /home/elasticsearch -R
start elasticsearch
