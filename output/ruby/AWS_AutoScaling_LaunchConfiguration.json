require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_AutoScaling_LaunchConfiguration
        ##
        class AutoScalingLaunchConfiguration < Resource


          property :associate_public_ip_address, 'AssociatePublicIpAddress'
          property :classic_link_vpc_id, 'ClassicLinkVPCId'
          property :ebs_optimized, 'EbsOptimized'
          property :iam_instance_profile, 'IamInstanceProfile'
          property :image_id, 'ImageId'
          property :instance_id, 'InstanceId'
          property :instance_monitoring, 'InstanceMonitoring'
          property :instance_type, 'InstanceType'
          property :kernel_id, 'KernelId'
          property :key_name, 'KeyName'
          property :placement_tenancy, 'PlacementTenancy'
          property :ram_disk_id, 'RamDiskId'
          property :spot_price, 'SpotPrice'
          property :user_data, 'UserData'

          def initialize(*args)
            super
            type 'AWS_AutoScaling_LaunchConfiguration'

            @variables['BlockDeviceMappings'] = []
            @variables['ClassicLinkVPCSecurityGroups'] = []
            @variables['SecurityGroups'] = []
          end

          def block_device_mappings(value)
            @variables['BlockDeviceMappings'] << value
          end
          
          def classic_link_vpc_security_groups(value)
            @variables['ClassicLinkVPCSecurityGroups'] << value
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
      def autoscaling_launchconfiguration(name, &block)
        r = Model::Template::Resource::AutoScalingLaunchConfiguration.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end