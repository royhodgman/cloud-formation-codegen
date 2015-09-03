require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_Instance
        ##
        class OpsWorksInstance < Resource


          property :ami_id, 'AmiId'
          property :architecture, 'Architecture'
          property :auto_scaling_type, 'AutoScalingType'
          property :availability_zone, 'AvailabilityZone'
          property :ebs_optimized, 'EbsOptimized'
          property :install_updates_on_boot, 'InstallUpdatesOnBoot'
          property :instance_type, 'InstanceType'
          property :os, 'Os'
          property :root_device_type, 'RootDeviceType'
          property :ssh_key_name, 'SshKeyName'
          property :stack_id, 'StackId'
          property :subnet_id, 'SubnetId'
          property :time_based_auto_scaling, 'TimeBasedAutoScaling'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_Instance'

            @variables['LayerIds'] = []
          end

          def layer_ids(value)
            @variables['LayerIds'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_instance(name, &block)
        r = Model::Template::Resource::OpsWorksInstance.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end