storm
=====

Builds a multi node storm topology, this will consist of a bootstrap file for installing java, mvn, git, zookeeper and storm

Topology consists of 1 storm client, 1 storm nimbus, 2 storm supervisors, 3 zookeeper nodes

Need a new security group for STORM - port 80, 8080, 2181, 6700-6710
Need elastic IPs for each box

Begin with zookeeper1 and reuse the process of other zookeeper nodes
Build Nimbus
Build Supervisor
Build Storm Client
Test the topology and play with parallelism
