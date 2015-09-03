require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudWatch_Logs_MetricFilter_MetricTransformation_Property
        ##
        class LogsMetricFilterMetricTransformationProperty < Resource


          property :metric_name, 'MetricName'
          property :metric_namespace, 'MetricNamespace'
          property :metric_value, 'MetricValue'

          def initialize(*args)
            super
            type 'CloudWatch_Logs_MetricFilter_MetricTransformation_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def logs_metricfilter_metrictransformation_property(name, &block)
        r = Model::Template::Resource::LogsMetricFilterMetricTransformationProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end