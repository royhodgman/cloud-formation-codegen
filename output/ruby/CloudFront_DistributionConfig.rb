require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_DistributionConfig
        ##
        class DistributionConfig < Resource


          property :comment, 'Comment'
          property :default_cache_behavior, 'DefaultCacheBehavior'
          property :default_root_object, 'DefaultRootObject'
          property :enabled, 'Enabled'
          property :logging, 'Logging'
          property :price_class, 'PriceClass'
          property :restrictions, 'Restrictions'
          property :viewer_certificate, 'ViewerCertificate'

          def initialize(*args)
            super
            type 'CloudFront_DistributionConfig'

            @variables['Aliases'] = []
            @variables['CacheBehaviors'] = []
            @variables['CustomErrorResponses'] = []
            @variables['Origins'] = []
          end

          def aliases(value)
            @variables['Aliases'] << value
          end
          
          def cache_behaviors(value)
            @variables['CacheBehaviors'] << value
          end
          
          def custom_error_responses(value)
            @variables['CustomErrorResponses'] << value
          end
          
          def origins(value)
            @variables['Origins'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def distributionconfig(name, &block)
        r = Model::Template::Resource::DistributionConfig.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end