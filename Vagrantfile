Vagrant.configure("2") do |config|
  # Shared box for all machines

  # Machine 1: scriptbox
  config.vm.define "scriptbox" do |scriptbox|
    scriptbox.vm.hostname = "scriptbox"
    scriptbox.vm.network "public_network", ip: "192.168.3.60", bridge: "eno1"
    scriptbox.vm.provider "virtualbox" do |vb|
    scriptbox.vm.box = "generic/centos9s"
      vb.memory = 1024
    end
  end

  # Machine 2: web01
  config.vm.define "web01" do |web01|
    web01.vm.hostname = "web01"
    web01.vm.network "public_network", ip: "192.168.3.61", bridge: "eno1"
    web01.vm.provider "virtualbox" do |vb|
    web01.vm.box = "generic/centos9s"
      vb.memory = 512
    end
  end
 # Machine 3: web02
  config.vm.define "web02" do |web02|
    web02.vm.hostname = "web01"
    web02.vm.network "public_network", ip: "192.168.3.62", bridge: "eno1"
    web02.vm.provider "virtualbox" do |vb|
    web02.vm.box = "generic/centos9s"
      vb.memory = 512
    end
  end
  # Machine 4: web03
  config.vm.define "web03" do |web03|
    web03.vm.hostname = "web02"
    web03.vm.network "public_network", ip: "192.168.3.63", bridge: "eno1"
    web03.vm.provider "virtualbox" do |vb|
    web03.vm.box = "ubuntu/bionic64"
      vb.memory = 512
    end
  end
end
