# Humio Ansible Installation Steps


#### Provisioning infrastructure

- Ubuntu M5.4XL machine (This instance type contains 16 vCPUs, 64 GB memory, up to 10 Gbps network).
- In addition to port 22 for SSH, the Humio node requires port 8080 opened to incoming traffic for handling requests by the web application

**What will this ansible playbook is going to install**

- You’ll have to install JVM 11.2+3 before installing Humio.
- Humio uses Apache Kafka internally for queuing incoming messages, and for storing shared state when running Humio in a cluster setup. You’ll need to install Apache Kafka 2.4+.
- Humio uses Kafka 3.4.X to buffer ingest and sequence events among the nodes of a Humio cluster. Kafka requires Zookeeper for coordination.
- The last software you’ll need to install is the Humio software. Click on the heading here to see preparation, download, and installation instructions.

### Usage

Prerequisites
- Add ip address of the node under the [servers] section
- Specificy ssh key path inside ansible.cfg file (private_key_file= )

Standalone installation with playbook
```
sh provision.sh --tags java,zookeeper,kafka,humio
```
- This will install java:13+ version, zookeeper, kafka, and humio


Docker installation with playbook
```
sh provision.sh --tags humio -e use_docker=true
```

### Connect to verify installation and you will see humio 
http://ip-address:8080



