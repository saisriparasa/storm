#! /bin/bash

sudo apt-get update
wget --no-check-certificate https://s3.amazonaws.com/aws-sai-sriparasa-east/jdk-7u65-linux-x64.tar.gz
sudo mkdir /opt/jdk
tar -xvzf jdk-7u65-linux-x64.tar.gz
sudo mv jdk1.7.0_65/ /opt/jdk/

sudo chown -R ubuntu:ubuntu /opt/jdk/jdk1.7.0_65/
sudo update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.7.0_65/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.7.0_65/bin/javac 100

echo 'export JAVA_HOME=/opt/jdk/jdk1.7.0_65' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
exec bash
