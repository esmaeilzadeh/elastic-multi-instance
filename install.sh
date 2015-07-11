#!/bin/bash
useradd -d /home/elasticsearch -m elasticsearch
cp elastic /home/elasticsearch/elastic
cd /home/elasticsearch/elastic
wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.6.0.tar.gz
tar -xvzf  /home/elasticsearch/elasticsearch-1.6.0.tar.gz
mv elasticsearch-1.6.0 main
cp elasticsearch.conf /etc/init/elasticsearch.conf
cp elasticsearch-instance.conf /etc/init/elasticsearch-instance.conf
start elasticsearch
