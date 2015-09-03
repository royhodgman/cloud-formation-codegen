require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Data_Pipeline_Pipeline_ParameterValues
        ##
        class DataPipelinePipelineParameterValues < Resource


          property :id, 'Id'
          property :string_value, 'StringValue'

          def initialize(*args)
            super
            type 'AWS_Data_Pipeline_Pipeline_ParameterValues'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def data_pipeline_pipeline_parametervalues(name, &block)
        r = Model::Template::Resource::DataPipelinePipelineParameterValues.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end