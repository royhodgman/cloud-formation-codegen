require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Data_Pipeline_Pipeline_ParameterObjects
        ##
        class DataPipelinePipelineParameterObjects < Resource


          property :attributes, 'Attributes'
          property :id, 'Id'

          def initialize(*args)
            super
            type 'AWS_Data_Pipeline_Pipeline_ParameterObjects'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def data_pipeline_pipeline_parameterobjects(name, &block)
        r = Model::Template::Resource::DataPipelinePipelineParameterObjects.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end