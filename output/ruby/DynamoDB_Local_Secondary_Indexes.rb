require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB_Local_Secondary_Indexes
        ##
        class LocalSecondaryIndexes < Resource


          property :index_name, 'IndexName'
          property :key_schema, 'KeySchema'
          property :projection, 'Projection'

          def initialize(*args)
            super
            type 'DynamoDB_Local_Secondary_Indexes'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def local_secondary_indexes(name, &block)
        r = Model::Template::Resource::LocalSecondaryIndexes.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end