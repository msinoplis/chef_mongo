# Install required plugins
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

  Vagrant.configure("2") do |config|

    config.vm.define "main" do |main|
    main.vm.box = "ubuntu/xenial64"
    main.vm.network "private_network", ip: "192.168.10.100"
    main.hostsupdater.aliases = ["development.local"]
    main.vm.synced_folder ".", "/home/ubuntu/main"
    main.vm.provision "shell", path: "provision.sh", privileged: false

    end

end
