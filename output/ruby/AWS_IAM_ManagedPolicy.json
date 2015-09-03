require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_IAM_ManagedPolicy
        ##
        class IAMManagedPolicy < Resource


          property :description, 'Description'
          property :path, 'Path'
          property :policy_document, 'PolicyDocument'

          def initialize(*args)
            super
            type 'AWS_IAM_ManagedPolicy'

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
      def iam_managedpolicy(name, &block)
        r = Model::Template::Resource::IAMManagedPolicy.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end