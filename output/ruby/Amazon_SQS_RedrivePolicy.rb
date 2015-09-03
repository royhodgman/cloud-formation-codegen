require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_SQS_RedrivePolicy
        ##
        class SQSRedrivePolicy < Resource


          property :dead_letter_target_arn, 'deadLetterTargetArn'
          property :max_receive_count, 'maxReceiveCount'

          def initialize(*args)
            super
            type 'Amazon_SQS_RedrivePolicy'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def sqs_redrivepolicy(name, &block)
        r = Model::Template::Resource::SQSRedrivePolicy.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end