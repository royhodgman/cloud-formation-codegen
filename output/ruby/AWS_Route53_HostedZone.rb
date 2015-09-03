require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Route53_HostedZone
        ##
        class Route53HostedZone < Resource


          property :hosted_zone_config, 'HostedZoneConfig'
          property :name, 'Name'

          def initialize(*args)
            super
            type 'AWS_Route53_HostedZone'

            @variables['HostedZoneTags'] = []
            @variables['VPCs'] = []
          end

          def hosted_zone_tags(value)
            @variables['HostedZoneTags'] << value
          end
          
          def vp_cs(value)
            @variables['VPCs'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def route53_hostedzone(name, &block)
        r = Model::Template::Resource::Route53HostedZone.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end