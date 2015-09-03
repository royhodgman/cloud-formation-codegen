require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # ElasticLoadBalancing_Policy_Type
        ##
        class PolicyType < Resource


          property :policy_name, 'PolicyName'
          property :policy_type, 'PolicyType'

          def initialize(*args)
            super
            type 'ElasticLoadBalancing_Policy_Type'

            @variables['Attributes'] = []
            @variables['InstancePorts'] = []
            @variables['LoadBalancerPorts'] = []
          end

          def attributes(value)
            @variables['Attributes'] << value
          end
          
          def instance_ports(value)
            @variables['InstancePorts'] << value
          end
          
          def load_balancer_ports(value)
            @variables['LoadBalancerPorts'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def policy_type(name, &block)
        r = Model::Template::Resource::PolicyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end