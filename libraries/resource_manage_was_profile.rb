require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class WasManageProfile < Chef::Resource::LWRPBase
      provides :was_manage_profile

      self.resource_name = :was_manage_profile
      actions :create, :delete, :start, :stop, :wasadmin_single_script, :wsadmin_all_scripts, :install_jdbc_library
      default_action :start

      attribute :install_dir, :name_attribute => false, :kind_of => String
      attribute :profile_name, :name_attribute => true, :kind_of => String
      attribute :profile_type, :name_attribute => false, :kind_of => String
      attribute :node_name, :name_attribute => false, :kind_of => String
      attribute :cell_name, :name_attribute => false, :kind_of => String
      attribute :host_name, :name_attribute => false, :kind_of => String
      attribute :enable_admin_security, :name_attribute => false, :kind_of => String
      attribute :admin_username, :name_attribute => false, :kind_of => String
      attribute :admin_password, :name_attribute => false, :kind_of => String
      attribute :starting_port, :name_attribute => false, :kind_of => String
      attribute :dmgr_host, :name_attribute => false, :kind_of => String
      attribute :dmgr_port, :name_attribute => false, :kind_of => String
      attribute :script_language, :name_attribute => false, :kind_of => String
      attribute :script_path, :name_attribute => false, :kind_of => String
      attribute :script_name, :name_attribute => false, :kind_of => String
      attribute :data, :name_attribute => false, :kind_of => Hash, :default => {}
    end
  end
end