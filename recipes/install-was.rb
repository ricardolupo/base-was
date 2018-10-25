node[:base_was][:packages].each do |pkg|
  package pkg
end

iim 'install_iim' do
  iim_install_dir node[:base_was][:iim][:install_dir]
  iim_data_dir node[:base_was][:iim][:install_data_dir]
  iim_uri node[:base_was][:iim][:install_file_uri]
  access_mode node[:base_was][:iim][:access_mode]
  user node[:base_was][:user]
  group node[:base_was][:group]
  action :install_iim
  not_if do ::File.exists?(node[:base_was][:iim][:install_dir] + "/eclipse/tools/imcl") end
end

iim 'install_websphere' do
  iim_install_dir node[:base_was][:iim][:install_dir]
  product_id node[:base_was][:was][:product_id]
  product_uris node[:base_was][:was][:install_file_uris]
  product_install_dir node[:base_was][:was][:install_dir]
  user node[:base_was][:user]
  group node[:base_was][:group]
  action :install_product
  not_if do ::File.exists?(node[:base_was][:was][:install_dir] + "/bin/manageprofiles.sh") end
end
