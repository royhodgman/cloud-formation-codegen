require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Data_Pipeline_PipelineObjects
        ##
        class DataPipelinePipelineObjects < Resource


          property :fields, 'Fields'
          property :id, 'Id'
          property :name, 'Name'

          def initialize(*args)
            super
            type 'AWS_Data_Pipeline_PipelineObjects'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def data_pipeline_pipelineobjects(name, &block)
        r = Model::Template::Resource::DataPipelinePipelineObjects.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end