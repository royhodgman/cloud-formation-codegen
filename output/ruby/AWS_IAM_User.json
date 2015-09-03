require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_IAM_User
        ##
        class IAMUser < Resource


          property :login_profile, 'LoginProfile'
          property :path, 'Path'
          property :arn, 'Arn'

          def initialize(*args)
            super
            type 'AWS_IAM_User'

            @variables['Groups'] = []
            @variables['ManagedPolicyArns'] = []
            @variables['Policies'] = []
          end

          def groups(value)
            @variables['Groups'] << value
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
      def iam_user(name, &block)
        r = Model::Template::Resource::IAMUser.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end