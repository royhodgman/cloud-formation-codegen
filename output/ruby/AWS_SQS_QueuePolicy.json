require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_SQS_QueuePolicy
        ##
        class SQSQueuePolicy < Resource


          property :policy_document, 'PolicyDocument'

          def initialize(*args)
            super
            type 'AWS_SQS_QueuePolicy'

            @variables['Queues'] = []
          end

          def queues(value)
            @variables['Queues'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def sqs_queuepolicy(name, &block)
        r = Model::Template::Resource::SQSQueuePolicy.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end