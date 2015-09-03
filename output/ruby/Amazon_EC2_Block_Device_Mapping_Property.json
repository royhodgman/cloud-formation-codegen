require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_EC2_Block_Device_Mapping_Property
        ##
        class EC2BlockDeviceMappingProperty < Resource


          property :device_name, 'DeviceName'
          property :ebs, 'Ebs'
          property :no_device, 'NoDevice'
          property :virtual_name, 'VirtualName'

          def initialize(*args)
            super
            type 'Amazon_EC2_Block_Device_Mapping_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_block_device_mapping_property(name, &block)
        r = Model::Template::Resource::EC2BlockDeviceMappingProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end