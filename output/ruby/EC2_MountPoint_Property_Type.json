require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2_MountPoint_Property_Type
        ##
        class MountPointPropertyType < Resource


          property :device, 'Device'
          property :volume_id, 'VolumeId'

          def initialize(*args)
            super
            type 'EC2_MountPoint_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def mountpoint_property_type(name, &block)
        r = Model::Template::Resource::MountPointPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end