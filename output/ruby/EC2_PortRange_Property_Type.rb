require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2_PortRange_Property_Type
        ##
        class PortRangePropertyType < Resource



          def initialize(*args)
            super
            type 'EC2_PortRange_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def portrange_property_type(name, &block)
        r = Model::Template::Resource::PortRangePropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end