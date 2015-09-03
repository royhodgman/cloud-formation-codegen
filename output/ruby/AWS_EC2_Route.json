require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_Route
        ##
        class EC2Route < Resource


          property :destination_cidr_block, 'DestinationCidrBlock'
          property :gateway_id, 'GatewayId'
          property :instance_id, 'InstanceId'
          property :network_interface_id, 'NetworkInterfaceId'
          property :route_table_id, 'RouteTableId'
          property :vpc_peering_connection_id, 'VpcPeeringConnectionId'

          def initialize(*args)
            super
            type 'AWS_EC2_Route'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_route(name, &block)
        r = Model::Template::Resource::EC2Route.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end