require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_RDS_DBSubnetGroup
        ##
        class RDSDBSubnetGroup < Resource

          include Model::Mixin::Taggable

          property :db_subnet_group_description, 'DBSubnetGroupDescription'

          def initialize(*args)
            super
            type 'AWS_RDS_DBSubnetGroup'

            @variables['SubnetIds'] = []
            @variables['Tags'] = []
          end

          def subnet_ids(value)
            @variables['SubnetIds'] << value
          end
          
          def tags(value)
            @variables['Tags'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def rds_dbsubnetgroup(name, &block)
        r = Model::Template::Resource::RDSDBSubnetGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end