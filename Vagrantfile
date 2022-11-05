Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "alvertsworks-01"
  config.vm.define "alvertsworks-01"
  config.vagrant.plugins = ['vagrant-vbguest']

  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "public_network"

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