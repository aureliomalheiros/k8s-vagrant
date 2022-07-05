# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	
	config.vm.provision "shell", path: "configuration/config.sh"

	config.vm.define "knode01" do |knode01|
		knode01.vm.box = "ubuntu/xenial64"
		knode01.vm.network "private_network", ip: "192.168.57.10"
		knode01.vm.hostname = "knode01"
		knode01.vm.provider "virtualbox" do |vb|
			vb.name = "knode01"
		    vb.customize ["modifyvm", :id, "--audio", "none"]
		end
		knode01.vm.provision "shell", inline: <<-SHELL
		SHELL
		knode01.vm.provision "shell", path: "hosts/knode01.sh"
		knode01.vm.provision "shell", path: "control-plane/control-plane.sh"
	end

	config.vm.define "knode02" do |knode02|
		knode02.vm.box = "ubuntu/xenial64"
		knode02.vm.network "private_network", ip: "192.168.57.11"
		knode02.vm.hostname = "knode02"

		knode02.vm.provider "virtualbox" do |vb|
			vb.name = "knode02"
			vb.customize ["modifyvm", :id, "--audio", "none"]
		end
		knode02.vm.provision "shell", inline: <<-SHELL
		SHELL
		knode02.vm.provision "shell", path: "hosts/knode02.sh"
	end
	
	config.vm.define "knode03" do |knode03|
		knode03.vm.box = "ubuntu/xenial64"
		knode03.vm.network "private_network", ip: "192.168.57.12"
		knode03.vm.hostname = "knode03"

		knode03.vm.provider "virtualbox" do |vb|
			vb.name = "knode03"
		    vb.customize ["modifyvm", :id, "--audio", "none"]
		end
		knode03.vm.provision "shell", inline: <<-SHELL
		SHELL
		knode03.vm.provision "shell", path: "hosts/knode03.sh"
	end

end
