require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_DistributionConfiguration_ViewerCertificate
        ##
        class DistributionConfigurationViewerCertificate < Resource


          property :cloud_front_default_certificate, 'CloudFrontDefaultCertificate'
          property :iam_certificate_id, 'IamCertificateId'
          property :minimum_protocol_version, 'MinimumProtocolVersion'
          property :ssl_support_method, 'SslSupportMethod'

          def initialize(*args)
            super
            type 'CloudFront_DistributionConfiguration_ViewerCertificate'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def distributionconfiguration_viewercertificate(name, &block)
        r = Model::Template::Resource::DistributionConfigurationViewerCertificate.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end