require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_VolumeConfiguration_Type
        ##
        class OpsWorksVolumeConfigurationType < Resource


          property :iops, 'Iops'
          property :mount_point, 'MountPoint'
          property :number_of_disks, 'NumberOfDisks'
          property :raid_level, 'RaidLevel'
          property :size, 'Size'
          property :volume_type, 'VolumeType'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_VolumeConfiguration_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_volumeconfiguration_type(name, &block)
        r = Model::Template::Resource::OpsWorksVolumeConfigurationType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end