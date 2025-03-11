Vagrant.configure("2") do |config|

  config.vm.define "web" do |web|
    web.vm.box = "cloudicio/ubuntu-server"
    web.vm.hostname = "jenkins-server"
    web.vm.box_version = "24.04.1"
    web.vm.network "private_network", ip: "192.168.56.4"
    web.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
    end
    web.ssh.password = "vagrant"
    web.vm.provision "file", source: "./ssh/vagrant_key.pub", destination: "/home/vagrant/.ssh/authorized_keys"
    web.vm.provision "shell", inline: "chmod 600 /home/vagrant/.ssh/authorized_keys"
  end

  config.vm.define "agent" do |agent|
    agent.vm.box = "cloudicio/ubuntu-server"
    agent.vm.box_version = "24.04.1"
    agent.vm.hostname = "jenkins-agent"
    agent.vm.network "private_network", ip: "192.168.56.5"
    agent.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
    end
    agent.ssh.password = "vagrant"
    agent.vm.provision "file", source: "./ssh/vagrant_key.pub", destination: "/home/vagrant/.ssh/authorized_keys"
    agent.vm.provision "shell", inline: "chmod 600 /home/vagrant/.ssh/authorized_keys"
  end

  config.vm.define "apache" do |apache|
    apache.vm.box = "cloudicio/ubuntu-server"
    apache.vm.box_version = "24.04.1"
    apache.vm.hostname = "apache-server"
    apache.vm.network "private_network", ip: "192.168.56.6"
    apache.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
    end
    apache.ssh.password = "vagrant"
    apache.vm.provision "file", source: "./ssh/vagrant_key.pub", destination: "/home/vagrant/.ssh/authorized_keys"
    apache.vm.provision "shell", inline: "chmod 600 /home/vagrant/.ssh/authorized_keys && sudo apt update && sudo apt install -y apache2"
  end
end
