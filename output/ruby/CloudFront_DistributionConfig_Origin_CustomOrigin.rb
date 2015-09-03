require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_DistributionConfig_Origin_CustomOrigin
        ##
        class DistributionConfigOriginCustomOrigin < Resource


          property :http_port, 'HTTPPort'
          property :https_port, 'HTTPSPort'
          property :origin_protocol_policy, 'OriginProtocolPolicy'

          def initialize(*args)
            super
            type 'CloudFront_DistributionConfig_Origin_CustomOrigin'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def distributionconfig_origin_customorigin(name, &block)
        r = Model::Template::Resource::DistributionConfigOriginCustomOrigin.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end