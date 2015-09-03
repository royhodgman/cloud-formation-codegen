require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_VPNConnection
        ##
        class EC2VPNConnection < Resource

          include Model::Mixin::Taggable

          property :type, 'Type'
          property :customer_gateway_id, 'CustomerGatewayId'
          property :static_routes_only, 'StaticRoutesOnly'
          property :tags, 'Tags'
          property :vpn_gateway_id, 'VpnGatewayId'

          def initialize(*args)
            super
            type 'AWS_EC2_VPNConnection'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_vpnconnection(name, &block)
        r = Model::Template::Resource::EC2VPNConnection.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end