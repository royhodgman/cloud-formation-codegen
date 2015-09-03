require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ElastiCache_SubnetGroup_
        ##
        class ElastiCacheSubnetGroup < Resource


          property :description, 'Description'

          def initialize(*args)
            super
            type 'AWS_ElastiCache_SubnetGroup_'

            @variables['SubnetIds'] = []
          end

          def subnet_ids(value)
            @variables['SubnetIds'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def elasticache_subnetgroup_(name, &block)
        r = Model::Template::Resource::ElastiCacheSubnetGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end