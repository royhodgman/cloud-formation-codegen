require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions_VolumesFrom
        ##
        class EC2ContainerServiceTaskDefinitionContainerDefinitionsVolumesFrom < Resource


          property :source_container, 'SourceContainer'
          property :read_only, 'ReadOnly'

          def initialize(*args)
            super
            type 'Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions_VolumesFrom'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_container_service_taskdefinition_containerdefinitions_volumesfrom(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitionsVolumesFrom.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end