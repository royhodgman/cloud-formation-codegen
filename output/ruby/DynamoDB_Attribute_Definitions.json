require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB_Attribute_Definitions
        ##
        class AttributeDefinitions < Resource


          property :attribute_name, 'AttributeName'
          property :attribute_type, 'AttributeType'

          def initialize(*args)
            super
            type 'DynamoDB_Attribute_Definitions'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def attribute_definitions(name, &block)
        r = Model::Template::Resource::AttributeDefinitions.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end