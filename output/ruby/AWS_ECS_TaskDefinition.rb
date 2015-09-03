require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ECS_TaskDefinition
        ##
        class ECSTaskDefinition < Resource



          def initialize(*args)
            super
            type 'AWS_ECS_TaskDefinition'

            @variables['ContainerDefinitions'] = []
            @variables['Volumes'] = []
          end

          def container_definitions(value)
            @variables['ContainerDefinitions'] << value
          end
          
          def volumes(value)
            @variables['Volumes'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ecs_taskdefinition(name, &block)
        r = Model::Template::Resource::ECSTaskDefinition.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end