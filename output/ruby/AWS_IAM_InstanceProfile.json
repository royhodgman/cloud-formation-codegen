require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_IAM_InstanceProfile
        ##
        class IAMInstanceProfile < Resource


          property :path, 'Path'
          property :arn, 'Arn'

          def initialize(*args)
            super
            type 'AWS_IAM_InstanceProfile'

            @variables['Roles'] = []
          end

          def roles(value)
            @variables['Roles'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def iam_instanceprofile(name, &block)
        r = Model::Template::Resource::IAMInstanceProfile.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end