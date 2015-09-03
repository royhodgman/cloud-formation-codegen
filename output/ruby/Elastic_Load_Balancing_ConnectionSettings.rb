require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic_Load_Balancing_ConnectionSettings
        ##
        class LoadBalancingConnectionSettings < Resource


          property :idle_timeout, 'IdleTimeout'

          def initialize(*args)
            super
            type 'Elastic_Load_Balancing_ConnectionSettings'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def load_balancing_connectionsettings(name, &block)
        r = Model::Template::Resource::LoadBalancingConnectionSettings.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end