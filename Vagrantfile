Vagrant.configure('2') do |config|
  config.vm.box = 'daptiv/windows2012r2_chef12'
  config.vm.communicator = :winrm
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'wix::installer'
    chef.add_recipe 'minitest-handler'
    chef.file_cache_path = 'c:/chef/cache'
  end
end

