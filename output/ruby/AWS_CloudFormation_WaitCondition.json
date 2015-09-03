require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_CloudFormation_WaitCondition
        ##
        class CloudFormationWaitCondition < Resource


          property :count, 'Count'
          property :handle, 'Handle'
          property :timeout, 'Timeout'
          property :data, 'Data'

          def initialize(*args)
            super
            type 'AWS_CloudFormation_WaitCondition'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def cloudformation_waitcondition(name, &block)
        r = Model::Template::Resource::CloudFormationWaitCondition.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end