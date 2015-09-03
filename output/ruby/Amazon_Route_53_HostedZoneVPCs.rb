require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_Route_53_HostedZoneVPCs
        ##
        class Route53HostedZoneVPCs < Resource


          property :vpc_id, 'VPCId'
          property :vpc_region, 'VPCRegion'

          def initialize(*args)
            super
            type 'Amazon_Route_53_HostedZoneVPCs'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def route_53_hostedzonevpcs(name, &block)
        r = Model::Template::Resource::Route53HostedZoneVPCs.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end