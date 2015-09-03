require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # ElasticLoadBalancing_AppCookieStickinessPolicy_Type
        ##
        class AppCookieStickinessPolicyType < Resource


          property :cookie_name, 'CookieName'
          property :policy_name, 'PolicyName'

          def initialize(*args)
            super
            type 'ElasticLoadBalancing_AppCookieStickinessPolicy_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def appcookiestickinesspolicy_type(name, &block)
        r = Model::Template::Resource::AppCookieStickinessPolicyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end