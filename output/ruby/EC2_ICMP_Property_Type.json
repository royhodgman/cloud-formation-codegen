require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2_ICMP_Property_Type
        ##
        class ICMPPropertyType < Resource



          def initialize(*args)
            super
            type 'EC2_ICMP_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def icmp_property_type(name, &block)
        r = Model::Template::Resource::ICMPPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end