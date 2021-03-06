require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_DynamoDB_Table
        ##
        class DynamoDBTable < Resource


          property :attribute_definitions, 'AttributeDefinitions'
          property :global_secondary_indexes, 'GlobalSecondaryIndexes'
          property :key_schema, 'KeySchema'
          property :local_secondary_indexes, 'LocalSecondaryIndexes'
          property :provisioned_throughput, 'ProvisionedThroughput'
          property :table_name, 'TableName'

          def initialize(*args)
            super
            type 'AWS_DynamoDB_Table'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def dynamodb_table(name, &block)
        r = Model::Template::Resource::DynamoDBTable.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end