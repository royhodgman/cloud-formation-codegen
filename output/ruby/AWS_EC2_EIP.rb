require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_EIP
        ##
        class EC2EIP < Resource


          property :instance_id, 'InstanceId'
          property :domain, 'Domain'
          property :allocation_id, 'AllocationId'

          def initialize(*args)
            super
            type 'AWS_EC2_EIP'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_eip(name, &block)
        r = Model::Template::Resource::EC2EIP.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end