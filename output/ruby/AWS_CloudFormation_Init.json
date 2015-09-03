require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_CloudFormation_Init
        ##
        class CloudFormationInit < Resource



          def initialize(*args)
            super
            type 'AWS_CloudFormation_Init'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def cloudformation_init(name, &block)
        r = Model::Template::Resource::CloudFormationInit.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end