require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFormation_Stack_Parameters_Property_Type
        ##
        class StackParametersPropertyType < Resource



          def initialize(*args)
            super
            type 'CloudFormation_Stack_Parameters_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def stack_parameters_property_type(name, &block)
        r = Model::Template::Resource::StackParametersPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end