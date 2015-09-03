require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_ForwardedValues_Cookies
        ##
        class ForwardedValuesCookies < Resource


          property :forward, 'Forward'

          def initialize(*args)
            super
            type 'CloudFront_ForwardedValues_Cookies'

            @variables['WhitelistedNames'] = []
          end

          def whitelisted_names(value)
            @variables['WhitelistedNames'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def forwardedvalues_cookies(name, &block)
        r = Model::Template::Resource::ForwardedValuesCookies.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end