require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB_Global_Secondary_Indexes
        ##
        class GlobalSecondaryIndexes < Resource


          property :index_name, 'IndexName'
          property :key_schema, 'KeySchema'
          property :projection, 'Projection'
          property :provisioned_throughput, 'ProvisionedThroughput'

          def initialize(*args)
            super
            type 'DynamoDB_Global_Secondary_Indexes'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def global_secondary_indexes(name, &block)
        r = Model::Template::Resource::GlobalSecondaryIndexes.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end