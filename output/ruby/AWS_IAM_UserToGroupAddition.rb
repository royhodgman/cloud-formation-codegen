require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_IAM_UserToGroupAddition
        ##
        class IAMUserToGroupAddition < Resource


          property :group_name, 'GroupName'

          def initialize(*args)
            super
            type 'AWS_IAM_UserToGroupAddition'

            @variables['Users'] = []
          end

          def users(value)
            @variables['Users'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def iam_usertogroupaddition(name, &block)
        r = Model::Template::Resource::IAMUserToGroupAddition.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end