require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Auto_Scaling_NotificationConfigurations
        ##
        class ScalingNotificationConfigurations < Resource


          property :topic_arn, 'TopicARN'

          def initialize(*args)
            super
            type 'Auto_Scaling_NotificationConfigurations'

            @variables['NotificationTypes'] = []
          end

          def notification_types(value)
            @variables['NotificationTypes'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def scaling_notificationconfigurations(name, &block)
        r = Model::Template::Resource::ScalingNotificationConfigurations.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end