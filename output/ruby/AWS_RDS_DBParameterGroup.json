require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_RDS_DBParameterGroup
        ##
        class RDSDBParameterGroup < Resource

          include Model::Mixin::Taggable

          property :description, 'Description'
          property :family, 'Family'
          property :parameters, 'Parameters'

          def initialize(*args)
            super
            type 'AWS_RDS_DBParameterGroup'

            @variables['Tags'] = []
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
      def rds_dbparametergroup(name, &block)
        r = Model::Template::Resource::RDSDBParameterGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end