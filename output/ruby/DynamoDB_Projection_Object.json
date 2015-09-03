require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # DynamoDB_Projection_Object
        ##
        class ProjectionObject < Resource


          property :projection_type, 'ProjectionType'
          property :keys_only, 'KEYS_ONLY'
          property :include, 'INCLUDE'
          property :all, 'ALL'

          def initialize(*args)
            super
            type 'DynamoDB_Projection_Object'

            @variables['NonKeyAttributes'] = []
          end

          def non_key_attributes(value)
            @variables['NonKeyAttributes'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def projection_object(name, &block)
        r = Model::Template::Resource::ProjectionObject.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end