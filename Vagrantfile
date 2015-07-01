Vagrant.configure(2) do |config|
    config.vm.define "salt-master" do |master|
        master.vm.box = "ubuntu/trusty64"
        master.vm.network "private_network", ip: "192.168.33.10"
        master.vm.hostname = "master"
        config.vm.synced_folder "salt/", "/srv/salt"
        config.vm.synced_folder "pillar/", "/srv/pillar"

        master.vm.provision :salt do |salt|
            salt.install_master = true
            salt.no_minion = true
            salt.seed_master = {minion: "./minion.pub"}
        end
    end

    config.vm.define "salt-minion" do |minion|
        minion.vm.box = "ubuntu/trusty64"
        minion.vm.network "private_network", ip: "192.168.33.11"
        minion.vm.hostname = "minion"

        minion.vm.provision :salt do |salt|
            salt.install_master = false
            salt.minion_config = "./minion.conf"
            salt.minion_key = "./minion.pem"
            salt.minion_pub = "./minion.pub"
        end
    end
end
