iim 'install_http' do
  iim_install_dir node[:base_was][:iim][:install_dir]
  iim_data_dir node[:base_was][:iim][:install_data_dir]
  iim_uri node[:base_was][:iim][:install_file_uri]
  access_mode node[:base_was][:iim][:access_mode]
  user node[:base_was][:user]
  group node[:base_was][:group]
  action :install_product
  not_if do ::File.exists?(node[:base_was][:iim][:install_dir] + "/eclipse/tools/imcl") end
end
