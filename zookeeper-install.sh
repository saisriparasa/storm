#! /bin/bash

wget --no-check-certificate http://mirror.olnevhost.net/pub/apache/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz
tar -xvzf zookeeper-3.4.6.tar.gz

echo 'export ZK_HOME=/home/ubuntu/zookeeper-3.4.6' >> ~/.bashrc
echo 'export PATH=$ZK_HOME/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

touch $ZK_HOME/conf/zoo.cfg

echo 'tickTime=2000' >> $ZK_HOME/conf/zoo.cfg
echo 'dataDir=/home/ubuntu/data/zookeeper' >> $ZK_HOME/conf/zoo.cfg
echo 'clientPort=2181' >> $ZK_HOME/conf/zoo.cfg
echo 'initLimit=5' >> $ZK_HOME/conf/zoo.cfg
echo 'syncLimit=2' >> $ZK_HOME/conf/zoo.cfg
