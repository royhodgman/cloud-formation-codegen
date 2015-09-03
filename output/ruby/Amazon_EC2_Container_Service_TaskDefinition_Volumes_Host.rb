require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_EC2_Container_Service_TaskDefinition_Volumes_Host
        ##
        class EC2ContainerServiceTaskDefinitionVolumesHost < Resource


          property :source_path, 'SourcePath'

          def initialize(*args)
            super
            type 'Amazon_EC2_Container_Service_TaskDefinition_Volumes_Host'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_container_service_taskdefinition_volumes_host(name, &block)
        r = Model::Template::Resource::EC2ContainerServiceTaskDefinitionVolumesHost.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end