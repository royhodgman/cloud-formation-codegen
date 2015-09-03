require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Notification_Configuration
        ##
        class S3NotificationConfiguration < Resource


          property :topic_configurations, 'TopicConfigurations'

          def initialize(*args)
            super
            type 'Amazon_S3_Notification_Configuration'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_notification_configuration(name, &block)
        r = Model::Template::Resource::S3NotificationConfiguration.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end