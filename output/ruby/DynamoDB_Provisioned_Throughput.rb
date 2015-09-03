require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB_Provisioned_Throughput
        ##
        class ProvisionedThroughput < Resource


          property :read_capacity_units, 'ReadCapacityUnits'
          property :write_capacity_units, 'WriteCapacityUnits'

          def initialize(*args)
            super
            type 'DynamoDB_Provisioned_Throughput'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def provisioned_throughput(name, &block)
        r = Model::Template::Resource::ProvisionedThroughput.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end