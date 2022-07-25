# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  
  config.vm.boot_timeout=600
  
  config.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
  end
  
  config.vm.provider "vmware_desktop" do |v|
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "4"
  end
  config.vm.provision "shell", path: "install-spark-kafka.sh"
  
  config.vm.provision "shell", run:"always", path:"start-services.sh", privileged:false


  config.vm.network "forwarded_port", guest: 7777, host: 7777
  config.vm.network "forwarded_port", guest: 8888, host: 7070
  config.vm.network "forwarded_port", guest: 2181, host: 2181
  config.vm.network "forwarded_port", guest: 2888, host: 2888
  config.vm.network "forwarded_port", guest: 3888, host: 3888
  config.vm.network "forwarded_port", guest: 9092, host: 9092,

  auto_correct: true
  
 
end



