require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Website_Configuration_Routing_Rules_Property
        ##
        class S3WebsiteConfigurationRoutingRulesProperty < Resource


          property :redirect_rule, 'RedirectRule'
          property :routing_rule_condition, 'RoutingRuleCondition'

          def initialize(*args)
            super
            type 'Amazon_S3_Website_Configuration_Routing_Rules_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_website_configuration_routing_rules_property(name, &block)
        r = Model::Template::Resource::S3WebsiteConfigurationRoutingRulesProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end