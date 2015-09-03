require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EFS_MountTarget
        ##
        class EFSMountTarget < Resource


          property :file_system_id, 'FileSystemId'
          property :ip_address, 'IpAddress'
          property :subnet_id, 'SubnetId'

          def initialize(*args)
            super
            type 'AWS_EFS_MountTarget'

            @variables['SecurityGroups'] = []
          end

          def security_groups(value)
            @variables['SecurityGroups'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def efs_mounttarget(name, &block)
        r = Model::Template::Resource::EFSMountTarget.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end