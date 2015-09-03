require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_AutoScaling_AutoScalingGroup
        ##
        class AutoScalingAutoScalingGroup < Resource

          include Model::Mixin::Taggable

          property :cooldown, 'Cooldown'
          property :desired_capacity, 'DesiredCapacity'
          property :health_check_grace_period, 'HealthCheckGracePeriod'
          property :health_check_type, 'HealthCheckType'
          property :instance_id, 'InstanceId'
          property :launch_configuration_name, 'LaunchConfigurationName'
          property :max_size, 'MaxSize'
          property :min_size, 'MinSize'
          property :placement_group, 'PlacementGroup'

          def initialize(*args)
            super
            type 'AWS_AutoScaling_AutoScalingGroup'

            @variables['AvailabilityZones'] = []
            @variables['LoadBalancerNames'] = []
            @variables['MetricsCollection'] = []
            @variables['NotificationConfigurations'] = []
            @variables['Tags'] = []
            @variables['TerminationPolicies'] = []
            @variables['VPCZoneIdentifier'] = []
          end

          def availability_zones(value)
            @variables['AvailabilityZones'] << value
          end
          
          def load_balancer_names(value)
            @variables['LoadBalancerNames'] << value
          end
          
          def metrics_collection(value)
            @variables['MetricsCollection'] << value
          end
          
          def notification_configurations(value)
            @variables['NotificationConfigurations'] << value
          end
          
          def tags(value)
            @variables['Tags'] << value
          end
          
          def termination_policies(value)
            @variables['TerminationPolicies'] << value
          end
          
          def vpc_zone_identifier(value)
            @variables['VPCZoneIdentifier'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def autoscaling_autoscalinggroup(name, &block)
        r = Model::Template::Resource::AutoScalingAutoScalingGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end