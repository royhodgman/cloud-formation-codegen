require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_IAM_Group
        ##
        class IAMGroup < Resource


          property :path, 'Path'
          property :arn, 'Arn'

          def initialize(*args)
            super
            type 'AWS_IAM_Group'

            @variables['ManagedPolicyArns'] = []
            @variables['Policies'] = []
          end

          def managed_policy_arns(value)
            @variables['ManagedPolicyArns'] << value
          end
          
          def policies(value)
            @variables['Policies'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def iam_group(name, &block)
        r = Model::Template::Resource::IAMGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end