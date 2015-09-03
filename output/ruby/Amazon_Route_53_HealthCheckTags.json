require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_Route_53_HealthCheckTags
        ##
        class Route53HealthCheckTags < Resource


          property :key, 'Key'
          property :value, 'Value'

          def initialize(*args)
            super
            type 'Amazon_Route_53_HealthCheckTags'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def route_53_healthchecktags(name, &block)
        r = Model::Template::Resource::Route53HealthCheckTags.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end