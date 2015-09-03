require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic_Load_Balancing_ConnectionDrainingPolicy
        ##
        class LoadBalancingConnectionDrainingPolicy < Resource


          property :enabled, 'Enabled'
          property :timeout, 'Timeout'

          def initialize(*args)
            super
            type 'Elastic_Load_Balancing_ConnectionDrainingPolicy'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def load_balancing_connectiondrainingpolicy(name, &block)
        r = Model::Template::Resource::LoadBalancingConnectionDrainingPolicy.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end