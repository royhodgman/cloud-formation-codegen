require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_SNS_Subscription_Property_Type
        ##
        class SNSSubscriptionPropertyType < Resource


          property :endpoint, 'Endpoint'
          property :protocol, 'Protocol'

          def initialize(*args)
            super
            type 'Amazon_SNS_Subscription_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def sns_subscription_property_type(name, &block)
        r = Model::Template::Resource::SNSSubscriptionPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end