require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_CloudFormation_AutoScaling_EBS_Block_Device_Property_Type
        ##
        class CloudFormationAutoScalingEBSBlockDevicePropertyType < Resource


          property :delete_on_termination, 'DeleteOnTermination'
          property :iops, 'Iops'
          property :snapshot_id, 'SnapshotId'
          property :volume_size, 'VolumeSize'
          property :volume_type, 'VolumeType'

          def initialize(*args)
            super
            type 'AWS_CloudFormation_AutoScaling_EBS_Block_Device_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def cloudformation_autoscaling_ebs_block_device_property_type(name, &block)
        r = Model::Template::Resource::CloudFormationAutoScalingEBSBlockDevicePropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end