require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_CloudFormation_AutoScaling_Block_Device_Mapping_Property_Type
        ##
        class CloudFormationAutoScalingBlockDeviceMappingPropertyType < Resource


          property :device_name, 'DeviceName'
          property :ebs, 'Ebs'
          property :no_device, 'NoDevice'
          property :virtual_name, 'VirtualName'

          def initialize(*args)
            super
            type 'AWS_CloudFormation_AutoScaling_Block_Device_Mapping_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def cloudformation_autoscaling_block_device_mapping_property_type(name, &block)
        r = Model::Template::Resource::CloudFormationAutoScalingBlockDeviceMappingPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end