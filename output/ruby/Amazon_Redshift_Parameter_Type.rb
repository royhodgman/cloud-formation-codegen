require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_Redshift_Parameter_Type
        ##
        class RedshiftParameterType < Resource


          property :parameter_name, 'ParameterName'
          property :parameter_value, 'ParameterValue'

          def initialize(*args)
            super
            type 'Amazon_Redshift_Parameter_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def redshift_parameter_type(name, &block)
        r = Model::Template::Resource::RedshiftParameterType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end