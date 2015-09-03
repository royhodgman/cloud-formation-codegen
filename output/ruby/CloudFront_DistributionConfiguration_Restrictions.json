require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_DistributionConfiguration_Restrictions
        ##
        class DistributionConfigurationRestrictions < Resource


          property :geo_restriction, 'GeoRestriction'

          def initialize(*args)
            super
            type 'CloudFront_DistributionConfiguration_Restrictions'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def distributionconfiguration_restrictions(name, &block)
        r = Model::Template::Resource::DistributionConfigurationRestrictions.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end