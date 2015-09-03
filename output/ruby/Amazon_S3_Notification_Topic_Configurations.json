require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Notification_Topic_Configurations
        ##
        class S3NotificationTopicConfigurations < Resource


          property :event, 'Event'
          property :topic, 'Topic'

          def initialize(*args)
            super
            type 'Amazon_S3_Notification_Topic_Configurations'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_notification_topic_configurations(name, &block)
        r = Model::Template::Resource::S3NotificationTopicConfigurations.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end