require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_DistributionConfig_Origin
        ##
        class DistributionConfigOrigin < Resource


          property :custom_origin_config, 'CustomOriginConfig'
          property :domain_name, 'DomainName'
          property :id, 'Id'
          property :origin_path, 'OriginPath'
          property :s3_origin_config, 'S3OriginConfig'

          def initialize(*args)
            super
            type 'CloudFront_DistributionConfig_Origin'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def distributionconfig_origin(name, &block)
        r = Model::Template::Resource::DistributionConfigOrigin.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end