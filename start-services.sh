export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
echo Iniciando Zookeeper ...
/vagrant/kafka/kafka_2.12-2.8.1/bin/zookeeper-server-start.sh -daemon /vagrant/kafka/kafka_2.12-2.8.1/config/zookeeper.properties  > /dev/null 2>&1 &
sleep 10
echo Iniciando Kafka ...
/vagrant/kafka/kafka_2.12-2.8.1/bin/kafka-server-start.sh -daemon /vagrant/kafka/kafka_2.12-2.8.1/config/server.properties > /dev/null 2>&1 &
sleep 10
echo Iniciando Jupyter Lab ...
cd /vagrant
jupyter lab --ip='*' --NotebookApp.token='' --NotebookApp.password='' --app_dir=/vagrant/ --preferred_dir /vagrant/ --no-browser  > /dev/null 2>&1 &
