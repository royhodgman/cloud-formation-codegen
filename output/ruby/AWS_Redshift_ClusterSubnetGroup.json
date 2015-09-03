require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Redshift_ClusterSubnetGroup
        ##
        class RedshiftClusterSubnetGroup < Resource


          property :description, 'Description'

          def initialize(*args)
            super
            type 'AWS_Redshift_ClusterSubnetGroup'

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
      def redshift_clustersubnetgroup(name, &block)
        r = Model::Template::Resource::RedshiftClusterSubnetGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end