require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_RouteTable
        ##
        class EC2RouteTable < Resource

          include Model::Mixin::Taggable

          property :vpc_id, 'VpcId'
          property :tags, 'Tags'

          def initialize(*args)
            super
            type 'AWS_EC2_RouteTable'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_routetable(name, &block)
        r = Model::Template::Resource::EC2RouteTable.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end