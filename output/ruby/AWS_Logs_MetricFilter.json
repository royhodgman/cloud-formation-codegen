require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Logs_MetricFilter
        ##
        class LogsMetricFilter < Resource


          property :log_group_name, 'LogGroupName'

          def initialize(*args)
            super
            type 'AWS_Logs_MetricFilter'

            @variables['FilterPattern'] = []
            @variables['MetricTransformations'] = []
          end

          def filter_pattern(value)
            @variables['FilterPattern'] << value
          end
          
          def metric_transformations(value)
            @variables['MetricTransformations'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def logs_metricfilter(name, &block)
        r = Model::Template::Resource::LogsMetricFilter.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end