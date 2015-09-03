require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # ElasticLoadBalancing_HealthCheck_Type
        ##
        class HealthCheckType < Resource


          property :healthy_threshold, 'HealthyThreshold'
          property :interval, 'Interval'
          property :target, 'Target'
          property :timeout, 'Timeout'
          property :unhealthy_threshold, 'UnhealthyThreshold'

          def initialize(*args)
            super
            type 'ElasticLoadBalancing_HealthCheck_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def healthcheck_type(name, &block)
        r = Model::Template::Resource::HealthCheckType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end