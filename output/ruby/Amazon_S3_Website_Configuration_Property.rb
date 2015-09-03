require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Website_Configuration_Property
        ##
        class S3WebsiteConfigurationProperty < Resource


          property :error_document, 'ErrorDocument'
          property :index_document, 'IndexDocument'
          property :redirect_all_requests_to, 'RedirectAllRequestsTo'
          property :routing_rules, 'RoutingRules'

          def initialize(*args)
            super
            type 'Amazon_S3_Website_Configuration_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_website_configuration_property(name, &block)
        r = Model::Template::Resource::S3WebsiteConfigurationProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end