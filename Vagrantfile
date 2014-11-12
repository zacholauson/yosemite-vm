VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "osx_yosemite"

  config.vm.provider "virtualbox" do |vm|
    vm.memory = 2048
  end

  config.ssh.forward_agent = true

  config.vm.synced_folder "shared/",
                          "/vagrant",
                          type: "rsync"

  config.vm.synced_folder "cookbooks/",
                          "/tmp/vagrant-chef-3/chef-solo-1/cookbooks",
                          type: "rsync"

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "cookbooks"

    chef.add_recipe("homebrew::brew")
    chef.add_recipe("homebrew::cask")

    chef.add_recipe("tmux::install")
  end
end
