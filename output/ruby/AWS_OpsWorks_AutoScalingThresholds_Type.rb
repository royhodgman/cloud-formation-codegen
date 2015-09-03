require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_AutoScalingThresholds_Type
        ##
        class OpsWorksAutoScalingThresholdsType < Resource


          property :cpu_threshold, 'CpuThreshold'
          property :ignore_metrics_time, 'IgnoreMetricsTime'
          property :instance_count, 'InstanceCount'
          property :load_threshold, 'LoadThreshold'
          property :memory_threshold, 'MemoryThreshold'
          property :thresholds_wait_time, 'ThresholdsWaitTime'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_AutoScalingThresholds_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_autoscalingthresholds_type(name, &block)
        r = Model::Template::Resource::OpsWorksAutoScalingThresholdsType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end