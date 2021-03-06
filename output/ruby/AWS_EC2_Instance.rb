require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_Instance
        ##
        class EC2Instance < Resource

          include Model::Mixin::Taggable

          property :availability_zone, 'AvailabilityZone'
          property :disable_api_termination, 'DisableApiTermination'
          property :ebs_optimized, 'EbsOptimized'
          property :iam_instance_profile, 'IamInstanceProfile'
          property :image_id, 'ImageId'
          property :instance_initiated_shutdown_behavior, 'InstanceInitiatedShutdownBehavior'
          property :instance_type, 'InstanceType'
          property :kernel_id, 'KernelId'
          property :key_name, 'KeyName'
          property :monitoring, 'Monitoring'
          property :placement_group_name, 'PlacementGroupName'
          property :private_ip_address, 'PrivateIpAddress'
          property :ramdisk_id, 'RamdiskId'
          property :source_dest_check, 'SourceDestCheck'
          property :subnet_id, 'SubnetId'
          property :tags, 'Tags'
          property :tenancy, 'Tenancy'
          property :user_data, 'UserData'
          property :additional_info, 'AdditionalInfo'
          property :availability_zone, 'AvailabilityZone'
          property :private_dns_name, 'PrivateDnsName'
          property :public_dns_name, 'PublicDnsName'
          property :private_ip, 'PrivateIp'
          property :public_ip, 'PublicIp'

          def initialize(*args)
            super
            type 'AWS_EC2_Instance'

            @variables['BlockDeviceMappings'] = []
            @variables['NetworkInterfaces'] = []
            @variables['SecurityGroupIds'] = []
            @variables['SecurityGroups'] = []
            @variables['Volumes'] = []
          end

          def block_device_mappings(value)
            @variables['BlockDeviceMappings'] << value
          end
          
          def network_interfaces(value)
            @variables['NetworkInterfaces'] << value
          end
          
          def security_group_ids(value)
            @variables['SecurityGroupIds'] << value
          end
          
          def security_groups(value)
            @variables['SecurityGroups'] << value
          end
          
          def volumes(value)
            @variables['Volumes'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_instance(name, &block)
        r = Model::Template::Resource::EC2Instance.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end