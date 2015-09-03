require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_AutoScaling_ScheduledAction
        ##
        class AutoScalingScheduledAction < Resource


          property :auto_scaling_group_name, 'AutoScalingGroupName'
          property :desired_capacity, 'DesiredCapacity'
          property :end_time, 'EndTime'
          property :max_size, 'MaxSize'
          property :min_size, 'MinSize'
          property :recurrence, 'Recurrence'
          property :start_time, 'StartTime'

          def initialize(*args)
            super
            type 'AWS_AutoScaling_ScheduledAction'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def autoscaling_scheduledaction(name, &block)
        r = Model::Template::Resource::AutoScalingScheduledAction.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end