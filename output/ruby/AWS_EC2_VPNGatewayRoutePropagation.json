require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_VPNGatewayRoutePropagation
        ##
        class EC2VPNGatewayRoutePropagation < Resource


          property :vpn_gateway_id, 'VpnGatewayId'

          def initialize(*args)
            super
            type 'AWS_EC2_VPNGatewayRoutePropagation'

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
      def ec2_vpngatewayroutepropagation(name, &block)
        r = Model::Template::Resource::EC2VPNGatewayRoutePropagation.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end