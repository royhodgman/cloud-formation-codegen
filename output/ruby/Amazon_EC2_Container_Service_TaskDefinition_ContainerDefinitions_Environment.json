require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions_Environment
        ##
        class EC2ContainerServiceTaskDefinitionContainerDefinitionsEnvironment < Resource


          property :name, 'Name'
          property :value, 'Value'

          def initialize(*args)
            super
            type 'Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions_Environment'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_container_service_taskdefinition_containerdefinitions_environment(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsEnvironment.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end