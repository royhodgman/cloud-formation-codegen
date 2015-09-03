require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Website_Configuration_Routing_Rules_Routing_Rule_Condition_Property
        ##
        class S3WebsiteConfigurationRoutingRulesRoutingRuleConditionProperty < Resource


          property :http_error_code_returned_equals, 'HttpErrorCodeReturnedEquals'
          property :key_prefix_equals, 'KeyPrefixEquals'

          def initialize(*args)
            super
            type 'Amazon_S3_Website_Configuration_Routing_Rules_Routing_Rule_Condition_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_website_configuration_routing_rules_routing_rule_condition_property(name, &block)
        r = Model::Template::Resource::S3WebsiteConfigurationRoutingRulesRoutingRuleConditionProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end