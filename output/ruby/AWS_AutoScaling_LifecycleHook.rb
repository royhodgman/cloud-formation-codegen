require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_AutoScaling_LifecycleHook
        ##
        class AutoScalingLifecycleHook < Resource


          property :auto_scaling_group_name, 'AutoScalingGroupName'
          property :default_result, 'DefaultResult'
          property :heartbeat_timeout, 'HeartbeatTimeout'
          property :lifecycle_transition, 'LifecycleTransition'
          property :notification_metadata, 'NotificationMetadata'
          property :notification_target_arn, 'NotificationTargetARN'
          property :role_arn, 'RoleARN'

          def initialize(*args)
            super
            type 'AWS_AutoScaling_LifecycleHook'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def autoscaling_lifecyclehook(name, &block)
        r = Model::Template::Resource::AutoScalingLifecycleHook.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end