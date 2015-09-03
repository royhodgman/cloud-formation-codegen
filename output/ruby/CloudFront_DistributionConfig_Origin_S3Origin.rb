require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_DistributionConfig_Origin_S3Origin
        ##
        class DistributionConfigOriginS3Origin < Resource


          property :origin_access_identity, 'OriginAccessIdentity'

          def initialize(*args)
            super
            type 'CloudFront_DistributionConfig_Origin_S3Origin'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def distributionconfig_origin_s3origin(name, &block)
        r = Model::Template::Resource::DistributionConfigOriginS3Origin.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end