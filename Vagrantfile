Vagrant.configure("2") do |config|
  # Create boxes
  boxes = [
    { :name => "ubuntu", :box => "benchoncy/ubuntu-2004-desktop-workstation" },
    { :name => "fedora", :box => "benchoncy/fedora-34-desktop-workstation" }
  ]
  boxes.each do |opts|
    config.vm.define opts[:name] do |config|
      config.vm.box = opts[:box]
      if opts[:name] == boxes.last[:name]
        config.vm.provision "ansible" do |ansible|
          ansible.playbook = "main.yml"
          ansible.limit = "all"
        end
        config.vm.provision :reload
      end
      config.vm.provider "virtualbox" do |v|
        #v.gui = true
        v.check_guest_additions = false
        v.cpus = 4
        v.memory = 8192
        v.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
        v.customize ["modifyvm", :id, "--accelerate3d", "on"]
      end
    end
  end
end
