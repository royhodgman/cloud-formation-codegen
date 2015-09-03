require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Route53_HealthCheck
        ##
        class Route53HealthCheck < Resource


          property :health_check_config, 'HealthCheckConfig'

          def initialize(*args)
            super
            type 'AWS_Route53_HealthCheck'

            @variables['HealthCheckTags'] = []
          end

          def health_check_tags(value)
            @variables['HealthCheckTags'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def route53_healthcheck(name, &block)
        r = Model::Template::Resource::Route53HealthCheck.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end