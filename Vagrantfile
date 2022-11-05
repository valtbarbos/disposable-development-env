Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "alvertsworks-01"
  config.vm.define "alvertsworks-01"
  config.vagrant.plugins = ['vagrant-vbguest']

  #config.ssh.insert_key = false
  config.vm.network "public_network", ip: "192.168.50.2", bridge: ["en1: Wi-Fi (AirPort)"]

  config.vm.synced_folder "./", "/home/vagrant/projects"

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 16
    vb.memory = "16384"
    vb.linked_clone = true
  end

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update -y && apt-get upgrade -y
    apt-get install -y curl git cmake tmux vim htop  # ...
  SHELL
end