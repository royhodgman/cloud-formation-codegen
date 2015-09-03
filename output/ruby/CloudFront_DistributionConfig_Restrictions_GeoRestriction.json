require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_DistributionConfig_Restrictions_GeoRestriction
        ##
        class DistributionConfigRestrictionsGeoRestriction < Resource


          property :restriction_type, 'RestrictionType'
          property :blacklist, 'blacklist'
          property :whitelist, 'whitelist'
          property :none, 'none'

          def initialize(*args)
            super
            type 'CloudFront_DistributionConfig_Restrictions_GeoRestriction'

            @variables['Locations'] = []
          end

          def locations(value)
            @variables['Locations'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def distributionconfig_restrictions_georestriction(name, &block)
        r = Model::Template::Resource::DistributionConfigRestrictionsGeoRestriction.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end