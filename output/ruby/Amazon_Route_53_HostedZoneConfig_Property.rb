require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_Route_53_HostedZoneConfig_Property
        ##
        class Route53HostedZoneConfigProperty < Resource


          property :comment, 'Comment'

          def initialize(*args)
            super
            type 'Amazon_Route_53_HostedZoneConfig_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def route_53_hostedzoneconfig_property(name, &block)
        r = Model::Template::Resource::Route53HostedZoneConfigProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end