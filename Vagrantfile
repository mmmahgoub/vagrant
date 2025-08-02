Vagrant.configure("2") do |config|
  # Shared box for all machines
  config.vm.box = "generic/centos9s"

  # Machine 1: scriptbox
  config.vm.define "scriptbox" do |scriptbox|
    scriptbox.vm.hostname = "scriptbox"
    scriptbox.vm.network "private_network", ip: "192.168.100.60"
    scriptbox.vm.provider "virtualbox" do |vb|
      vb.memory = 1024
    end
  end

  # Machine 2: web01
  config.vm.define "web01" do |web01|
    web01.vm.hostname = "web01"
    web01.vm.network "private_network", ip: "192.168.100.61"
    web01.vm.provider "virtualbox" do |vb|
      vb.memory = 512
    end
  end

  # Machine 3: web02
  config.vm.define "web02" do |web02|
    web02.vm.hostname = "web02"
    web02.vm.network "private_network", ip: "192.168.100.62"
    web02.vm.provider "virtualbox" do |vb|
      vb.memory = 512
    end
  end
end
