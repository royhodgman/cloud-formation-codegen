require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions
        ##
        class EC2ContainerServiceTaskDefinitionContainerDefinitions < Resource


          property :cpu, 'Cpu'
          property :essential, 'Essential'
          property :image, 'Image'
          property :memory, 'Memory'
          property :name, 'Name'

          def initialize(*args)
            super
            type 'Amazon_EC2_Container_Service_TaskDefinition_ContainerDefinitions'

            @variables['Command'] = []
            @variables['EntryPoint'] = []
            @variables['Environment'] = []
            @variables['Links'] = []
            @variables['MountPoints'] = []
            @variables['PortMappings'] = []
            @variables['VolumesFrom'] = []
          end

          def command(value)
            @variables['Command'] << value
          end
          
          def entry_point(value)
            @variables['EntryPoint'] << value
          end
          
          def environment(value)
            @variables['Environment'] << value
          end
          
          def links(value)
            @variables['Links'] << value
          end
          
          def mount_points(value)
            @variables['MountPoints'] << value
          end
          
          def port_mappings(value)
            @variables['PortMappings'] << value
          end
          
          def volumes_from(value)
            @variables['VolumesFrom'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_container_service_taskdefinition_containerdefinitions(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionContainerDefinitions.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end