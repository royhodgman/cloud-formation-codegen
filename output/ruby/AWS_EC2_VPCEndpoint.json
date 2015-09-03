require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_VPCEndpoint
        ##
        class EC2VPCEndpoint < Resource


          property :policy_document, 'PolicyDocument'
          property :service_name, 'ServiceName'
          property :vpc_id, 'VpcId'

          def initialize(*args)
            super
            type 'AWS_EC2_VPCEndpoint'

            @variables['RouteTableIds'] = []
          end

          def route_table_ids(value)
            @variables['RouteTableIds'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_vpcendpoint(name, &block)
        r = Model::Template::Resource::EC2VPCEndpoint.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end