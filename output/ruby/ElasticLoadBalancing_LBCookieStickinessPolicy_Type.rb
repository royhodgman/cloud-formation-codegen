require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # ElasticLoadBalancing_LBCookieStickinessPolicy_Type
        ##
        class LBCookieStickinessPolicyType < Resource


          property :cookie_expiration_period, 'CookieExpirationPeriod'
          property :policy_name, 'PolicyName'

          def initialize(*args)
            super
            type 'ElasticLoadBalancing_LBCookieStickinessPolicy_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def lbcookiestickinesspolicy_type(name, &block)
        r = Model::Template::Resource::LBCookieStickinessPolicyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end