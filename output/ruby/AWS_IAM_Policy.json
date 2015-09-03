require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_IAM_Policy
        ##
        class IAMPolicy < Resource


          property :policy_document, 'PolicyDocument'
          property :policy_name, 'PolicyName'

          def initialize(*args)
            super
            type 'AWS_IAM_Policy'

            @variables['Groups'] = []
            @variables['Roles'] = []
            @variables['Users'] = []
          end

          def groups(value)
            @variables['Groups'] << value
          end
          
          def roles(value)
            @variables['Roles'] << value
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
      def iam_policy(name, &block)
        r = Model::Template::Resource::IAMPolicy.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end