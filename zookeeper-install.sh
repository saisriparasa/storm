#! /bin/bash

wget --no-check-certificate http://mirror.olnevhost.net/pub/apache/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz
tar -xvzf zookeeper-3.4.6.tar.gz

echo 'export ZK_HOME=/home/ubuntu/zookeeper-3.4.6' >> ~/.bashrc
echo 'export PATH=/home/ubuntu/zookeeper-3.4.6/bin:$PATH' >> ~/.bashrc

touch /home/ubuntu/zookeeper-3.4.6/conf/zoo.cfg

echo 'tickTime=2000' >> /home/ubuntu/zookeeper-3.4.6/conf/zoo.cfg
echo 'dataDir=/home/ubuntu/data/zookeeper' >> /home/ubuntu/zookeeper-3.4.6/conf/zoo.cfg
echo 'clientPort=2181' >> /home/ubuntu/zookeeper-3.4.6/conf/zoo.cfg
echo 'initLimit=5' >> /home/ubuntu/zookeeper-3.4.6/conf/zoo.cfg
echo 'syncLimit=2' >> /home/ubuntu/zookeeper-3.4.6/conf/zoo.cfg

mkdir /home/ubuntu/data/zookeeper

exec bash
