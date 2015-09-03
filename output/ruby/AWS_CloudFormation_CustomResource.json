require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_CloudFormation_CustomResource
        ##
        class CloudFormationCustomResource < Resource


          property :service_token, 'ServiceToken'

          def initialize(*args)
            super
            type 'AWS_CloudFormation_CustomResource'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def cloudformation_customresource(name, &block)
        r = Model::Template::Resource::CloudFormationCustomResource.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end