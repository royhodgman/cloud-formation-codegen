require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_VPCPeeringConnection
        ##
        class EC2VPCPeeringConnection < Resource

          include Model::Mixin::Taggable

          property :peer_vpc_id, 'PeerVpcId'
          property :tags, 'Tags'
          property :vpc_id, 'VpcId'

          def initialize(*args)
            super
            type 'AWS_EC2_VPCPeeringConnection'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_vpcpeeringconnection(name, &block)
        r = Model::Template::Resource::EC2VPCPeeringConnection.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end