require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Data_Pipeline_Data_Pipeline_Object_Fields
        ##
        class DataPipelineDataPipelineObjectFields < Resource


          property :key, 'Key'
          property :ref_value, 'RefValue'
          property :string_value, 'StringValue'

          def initialize(*args)
            super
            type 'AWS_Data_Pipeline_Data_Pipeline_Object_Fields'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def data_pipeline_data_pipeline_object_fields(name, &block)
        r = Model::Template::Resource::DataPipelineDataPipelineObjectFields.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end