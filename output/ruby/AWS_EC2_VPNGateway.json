require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_VPNGateway
        ##
        class EC2VPNGateway < Resource

          include Model::Mixin::Taggable

          property :type, 'Type'
          property :tags, 'Tags'

          def initialize(*args)
            super
            type 'AWS_EC2_VPNGateway'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_vpngateway(name, &block)
        r = Model::Template::Resource::EC2VPNGateway.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end