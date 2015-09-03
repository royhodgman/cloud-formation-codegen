require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_ForwardedValues
        ##
        class ForwardedValues < Resource


          property :cookies, 'Cookies'
          property :query_string, 'QueryString'

          def initialize(*args)
            super
            type 'CloudFront_ForwardedValues'

            @variables['Headers'] = []
          end

          def headers(value)
            @variables['Headers'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def forwardedvalues(name, &block)
        r = Model::Template::Resource::ForwardedValues.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end