require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_DataPipeline_Pipeline
        ##
        class DataPipelinePipeline < Resource


          property :activate, 'Activate'
          property :description, 'Description'
          property :name, 'Name'
          property :parameter_objects, 'ParameterObjects'
          property :parameter_values, 'ParameterValues'
          property :pipeline_tags, 'PipelineTags'

          def initialize(*args)
            super
            type 'AWS_DataPipeline_Pipeline'

            @variables['PipelineObjects'] = []
          end

          def pipeline_objects(value)
            @variables['PipelineObjects'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def datapipeline_pipeline(name, &block)
        r = Model::Template::Resource::DataPipelinePipeline.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end