#!/bin/sh
 
sudo apt-get -y update && \
sudo apt-get install --no-install-recommends -y openjdk-8-jre-headless ca-certificates-java && \
sudo rm -rf /var/lib/apt/lists/*

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p /usr/local/miniconda
 
/usr/local/miniconda/bin/conda create -n bigdata python=3.8 -y
/usr/local/miniconda/bin/conda activate bigdata
/usr/local/miniconda/bin/conda install -y jupyterlab
/usr/local/miniconda/bin/conda install -y pyspark
/usr/local/miniconda/bin/conda install -c conda-forge -y findspark
/usr/local/miniconda/bin/conda install -c conda-forge -y kafka-python
/usr/local/miniconda/bin/conda install -c conda-forge -y sseclient
/usr/local/miniconda/bin/conda install -c anaconda -y seaborn

chmod -R 777 /usr/local/miniconda/

sudo cp /vagrant/myenvvars.sh /etc/profile.d/myenvvars.sh

#Install Kafka

#wget https://downloads.apache.org/kafka/2.8.1/kafka_2.12-2.8.1.tgz
#tar xzf kafka_2.12-2.8.1.tgz 





