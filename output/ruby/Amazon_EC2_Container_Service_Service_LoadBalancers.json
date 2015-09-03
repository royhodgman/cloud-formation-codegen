require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_EC2_Container_Service_Service_LoadBalancers
        ##
        class EC2ContainerServiceServiceLoadBalancers < Resource


          property :container_name, 'ContainerName'
          property :container_port, 'ContainerPort'
          property :load_balancer_name, 'LoadBalancerName'

          def initialize(*args)
            super
            type 'Amazon_EC2_Container_Service_Service_LoadBalancers'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_container_service_service_loadbalancers(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceServiceLoadBalancers.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end