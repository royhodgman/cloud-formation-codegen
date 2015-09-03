require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_SNS_TopicPolicy
        ##
        class SNSTopicPolicy < Resource


          property :policy_document, 'PolicyDocument'

          def initialize(*args)
            super
            type 'AWS_SNS_TopicPolicy'

            @variables['Topics'] = []
          end

          def topics(value)
            @variables['Topics'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def sns_topicpolicy(name, &block)
        r = Model::Template::Resource::SNSTopicPolicy.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end