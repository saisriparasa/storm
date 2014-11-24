#! /bin/bash
wget --no-check-certificate https://dl.dropboxusercontent.com/s/tqdpoif32gufapo/storm-0.9.0.1.tar.gz
tar -xvzf storm-0.9.0.1.tar.gz

echo 'export STORM_HOME=/home/ubuntu/storm-0.9.0.1' >> ~/.bashrc
echo 'export PATH=/home/ubuntu/storm-0.9.0.1/bin:$PATH' >> ~/.bashrc

#build the configuration yaml manually

mkdir /home/ubuntu/data/storm
exec bash
