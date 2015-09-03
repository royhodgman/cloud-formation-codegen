require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_CloudFormation_Resource_Tags_Type
        ##
        class CloudFormationResourceTagsType < Resource


          property :key, 'Key'
          property :value, 'Value'

          def initialize(*args)
            super
            type 'AWS_CloudFormation_Resource_Tags_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def cloudformation_resource_tags_type(name, &block)
        r = Model::Template::Resource::CloudFormationResourceTagsType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end