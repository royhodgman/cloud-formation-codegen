require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudWatch_Metric_Dimension_Property_Type
        ##
        class MetricDimensionPropertyType < Resource


          property :name, 'Name'
          property :value, 'Value'

          def initialize(*args)
            super
            type 'CloudWatch_Metric_Dimension_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def metric_dimension_property_type(name, &block)
        r = Model::Template::Resource::MetricDimensionPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end