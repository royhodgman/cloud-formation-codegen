require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Data_Pipeline_Parameter_Objects_Attributes
        ##
        class DataPipelineParameterObjectsAttributes < Resource


          property :key, 'Key'
          property :string_value, 'StringValue'

          def initialize(*args)
            super
            type 'AWS_Data_Pipeline_Parameter_Objects_Attributes'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def data_pipeline_parameter_objects_attributes(name, &block)
        r = Model::Template::Resource::DataPipelineParameterObjectsAttributes.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end