require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_SubnetRouteTableAssociation
        ##
        class EC2SubnetRouteTableAssociation < Resource


          property :route_table_id, 'RouteTableId'
          property :subnet_id, 'SubnetId'

          def initialize(*args)
            super
            type 'AWS_EC2_SubnetRouteTableAssociation'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_subnetroutetableassociation(name, &block)
        r = Model::Template::Resource::EC2SubnetRouteTableAssociation.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end