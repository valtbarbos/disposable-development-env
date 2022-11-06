Vagrant.configure("2") do |config|

  config.vm.define "alvertsworks01 " do |machine|

    machine.vm.box = "ubuntu/focal64"

    machine.vm.hostname = "alvertsworks01"
    
    machine.vm.network "private_network", ip: "100.167.0.213"
    
    machine.ssh.insert_key = false

    machine.ssh.private_key_path = ["keys/private_key"]

    machine.vm.provider "virtualbox" do |vb|
      vb.cpus = 16
      vb.memory = 4096
    end
  end
end