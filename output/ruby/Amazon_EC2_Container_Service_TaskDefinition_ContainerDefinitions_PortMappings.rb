require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions_PortMappings
        ##
        class EC2ContainerServiceTaskDefinitionContainerDefinitionsPortMappings < Resource


          property :container_port, 'ContainerPort'
          property :host_port, 'HostPort'

          def initialize(*args)
            super
            type 'Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions_PortMappings'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_container_service_taskdefinition_containerdefinitions_portmappings(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsPortMappings.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end