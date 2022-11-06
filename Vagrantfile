Vagrant.configure("2") do |config|

  config.vm.define "alvertsworks01" do |machine|

    machine.vm.box = "hashicorp/bionic64"

    machine.vm.hostname = "alvertsworks01"
    
    machine.vm.network "private_network", ip: "100.167.0.213"
    
    machine.ssh.insert_key = false

    machine.ssh.private_key_path = ["keys/private_key"]

    machine.vm.provider "virtualbox" do |vb|
      vb.cpus = 8
      vb.memory = 4096
    end

    # machine.vm.provision "shell", inline: <<-SHELL
    #   apt-get update -y && apt-get upgrade -y
    #   apt-get install -y curl git cmake tmux vim htop  # ...
    # SHELL
  end

  config.vm.define "ansibleproxy" do |machine|

    machine.vm.box = "hashicorp/bionic64"
  
    machine.vm.hostname = "ansibleproxy"
    
    machine.vm.network "private_network", ip: "100.167.0.214"

    machine.ssh.insert_key = false

    machine.ssh.private_key_path = ["keys/private_key"]

    machine.vm.synced_folder "./", "/home/vagrant/projects", disable: true
    
    machine.vm.provider "virtualbox" do |vb|
      vb.cpus = 8
      vb.memory = 4096
    end
  
    machine.vm.provision "docker" do |d|
      d.post_install_provision "shell", inline: <<-SHELL
        cd /home/vagrant/projects
        chmod a+x run.sh && sh run.sh
      SHELL
    end
  end
end