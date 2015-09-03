require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_DistributionConfig_CustomErrorResponse
        ##
        class DistributionConfigCustomErrorResponse < Resource


          property :error_caching_min_ttl, 'ErrorCachingMinTTL'
          property :error_code, 'ErrorCode'
          property :response_code, 'ResponseCode'
          property :response_page_path, 'ResponsePagePath'

          def initialize(*args)
            super
            type 'CloudFront_DistributionConfig_CustomErrorResponse'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def distributionconfig_customerrorresponse(name, &block)
        r = Model::Template::Resource::DistributionConfigCustomErrorResponse.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end