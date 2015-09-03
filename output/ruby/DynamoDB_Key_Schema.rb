require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB_Key_Schema
        ##
        class KeySchema < Resource


          property :attribute_name, 'AttributeName'
          property :key_type, 'KeyType'

          def initialize(*args)
            super
            type 'DynamoDB_Key_Schema'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def key_schema(name, &block)
        r = Model::Template::Resource::KeySchema.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end