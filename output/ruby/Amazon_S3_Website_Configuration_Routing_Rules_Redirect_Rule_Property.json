require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Website_Configuration_Routing_Rules_Redirect_Rule_Property
        ##
        class S3WebsiteConfigurationRoutingRulesRedirectRuleProperty < Resource


          property :host_name, 'HostName'
          property :http_redirect_code, 'HttpRedirectCode'
          property :protocol, 'Protocol'
          property :replace_key_prefix_with, 'ReplaceKeyPrefixWith'
          property :replace_key_with, 'ReplaceKeyWith'

          def initialize(*args)
            super
            type 'Amazon_S3_Website_Configuration_Routing_Rules_Redirect_Rule_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_website_configuration_routing_rules_redirect_rule_property(name, &block)
        r = Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRedirectRuleProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end