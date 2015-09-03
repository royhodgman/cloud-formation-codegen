require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Website_Configuration_Redirect_All_Requests_To_Property
        ##
        class S3WebsiteConfigurationRedirectAllRequestsToProperty < Resource


          property :host_name, 'HostName'
          property :protocol, 'Protocol'

          def initialize(*args)
            super
            type 'Amazon_S3_Website_Configuration_Redirect_All_Requests_To_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_website_configuration_redirect_all_requests_to_property(name, &block)
        r = Model::Template::Resource::S3WebsiteConfigurationRedirectAllRequestsToProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end