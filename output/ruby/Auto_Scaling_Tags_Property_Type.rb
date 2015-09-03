require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Auto_Scaling_Tags_Property_Type
        ##
        class ScalingTagsPropertyType < Resource


          property :key, 'Key'
          property :value, 'Value'
          property :propagate_at_launch, 'PropagateAtLaunch'

          def initialize(*args)
            super
            type 'Auto_Scaling_Tags_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def scaling_tags_property_type(name, &block)
        r = Model::Template::Resource::ScalingTagsPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end