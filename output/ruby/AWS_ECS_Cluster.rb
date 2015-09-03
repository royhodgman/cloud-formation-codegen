require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ECS_Cluster
        ##
        class ECSCluster < Resource



          def initialize(*args)
            super
            type 'AWS_ECS_Cluster'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ecs_cluster(name, &block)
        r = Model::Template::Resource::ECSCluster.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end