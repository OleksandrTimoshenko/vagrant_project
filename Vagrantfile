Vagrant.configure("2") do |config|

  # NGINX host
  config.vm.define "nginx" do |nginx|
      nginx.vm.box = "hashicorp/precise32"
      nginx.vm.provision "shell", path: "install_nginx.sh"  
      nginx.vm.network "public_network", ip: "195.114.145.12"
  end

  # web1 host
  config.vm.define "web1" do |web1|
    web1.vm.box = "ubuntu/bionic64"
    web1.vm.provision "shell", path: "install_apache.sh"
    web1.vm.provision "shell", path: "install_ansible.sh"
    web1.vm.hostname = "web1.hostname"
    web1.vm.network "public_network", ip: "195.114.145.13"
  end

  # web2 host
  config.vm.define "web2" do |web2|
    web2.vm.box = "ubuntu/bionic64"
    web2.vm.provision "shell", path: "install_apache.sh"
    web2.vm.provision "shell", path: "install_ansible.sh"
    web2.vm.hostname = "web2.hostname"
    web2.vm.network "public_network", ip: "195.114.145.14"
  end
end
	
