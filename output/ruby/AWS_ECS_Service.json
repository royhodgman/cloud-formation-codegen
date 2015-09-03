require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ECS_Service
        ##
        class ECSService < Resource


          property :cluster, 'Cluster'
          property :desired_count, 'DesiredCount'
          property :role, 'Role'
          property :task_definition, 'TaskDefinition'

          def initialize(*args)
            super
            type 'AWS_ECS_Service'

            @variables['LoadBalancers'] = []
          end

          def load_balancers(value)
            @variables['LoadBalancers'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ecs_service(name, &block)
        r = Model::Template::Resource::ECSService.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end