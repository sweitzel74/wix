# encoding: UTF-8
describe 'wix::installer' do

  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'should download wix package' do
    expect(chef_run).to create_remote_file "#{Chef::Config[:file_cache_path]}/WiX36.exe"
  end

  it 'should notify windows package to install immediately' do
  	resource = chef_run.remote_file("#{Chef::Config[:file_cache_path]}/WiX36.exe")
    expect(resource).to notify('windows_package[WiX Toolset v3.6.3303.1]').to(:install).immediately
  end
end
