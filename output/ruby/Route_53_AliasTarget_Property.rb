require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Route_53_AliasTarget_Property
        ##
        class 53AliasTargetProperty < Resource


          property :dns_name, 'DNSName'
          property :evaluate_target_health, 'EvaluateTargetHealth'
          property :hosted_zone_id, 'HostedZoneId'

          def initialize(*args)
            super
            type 'Route_53_AliasTarget_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def 53_aliastarget_property(name, &block)
        r = Model::Template::Resource::53AliasTargetProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end