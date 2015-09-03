require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_EIPAssociation
        ##
        class EC2EIPAssociation < Resource


          property :allocation_id, 'AllocationId'
          property :eip, 'EIP'
          property :instance_id, 'InstanceId'
          property :network_interface_id, 'NetworkInterfaceId'
          property :private_ip_address, 'PrivateIpAddress'

          def initialize(*args)
            super
            type 'AWS_EC2_EIPAssociation'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_eipassociation(name, &block)
        r = Model::Template::Resource::EC2EIPAssociation.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end