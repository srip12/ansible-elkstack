Vagrant.configure("2") do |config|
    config.vm.define "elastic" do |subconfig|
        subconfig.vm.box = 'ubuntu/xenial64'
        subconfig.vm.hostname = "elastic"
        subconfig.vm.network :private_network, ip: "10.0.0.10"
        subconfig.vm.provision :shell, path: "bootstrap.sh"
    end
    config.vm.define "logstash" do |subconfig|
        subconfig.vm.box = 'ubuntu/xenial64'
        subconfig.vm.hostname = "logstash"
        subconfig.vm.network :private_network, ip: "10.0.0.11"
        subconfig.vm.provision :shell, path: "bootstrap.sh"
    end
    config.vm.define "filebeat" do |subconfig|
        subconfig.vm.box = 'ubuntu/xenial64'
        subconfig.vm.hostname = "filebeat"
        subconfig.vm.network :private_network, ip: "10.0.0.12"
        subconfig.vm.provision :shell, path: "bootstrap.sh"
    end
    config.vm.define "kibana" do |subconfig|
        subconfig.vm.box = 'ubuntu/xenial64'
        subconfig.vm.hostname = "kibana"
        subconfig.vm.network :private_network, ip: "10.0.0.13"
        subconfig.vm.provision :shell, path: "bootstrap.sh"
    end
end
