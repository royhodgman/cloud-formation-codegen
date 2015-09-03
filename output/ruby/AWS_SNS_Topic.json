require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_SNS_Topic
        ##
        class SNSTopic < Resource


          property :display_name, 'DisplayName'
          property :topic_name, 'TopicName'
          property :topic_name, 'TopicName'

          def initialize(*args)
            super
            type 'AWS_SNS_Topic'

            @variables['Subscription'] = []
          end

          def subscription(value)
            @variables['Subscription'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def sns_topic(name, &block)
        r = Model::Template::Resource::SNSTopic.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end