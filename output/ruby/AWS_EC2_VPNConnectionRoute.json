require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_VPNConnectionRoute
        ##
        class EC2VPNConnectionRoute < Resource


          property :destination_cidr_block, 'DestinationCidrBlock'
          property :vpn_connection_id, 'VpnConnectionId'

          def initialize(*args)
            super
            type 'AWS_EC2_VPNConnectionRoute'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_vpnconnectionroute(name, &block)
        r = Model::Template::Resource::EC2VPNConnectionRoute.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end