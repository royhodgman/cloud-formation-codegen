require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic_Beanstalk_SourceConfiguration_Property_Type
        ##
        class BeanstalkSourceConfigurationPropertyType < Resource


          property :application_name, 'ApplicationName'
          property :template_name, 'TemplateName'

          def initialize(*args)
            super
            type 'Elastic_Beanstalk_SourceConfiguration_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def beanstalk_sourceconfiguration_property_type(name, &block)
        r = Model::Template::Resource::BeanstalkSourceConfigurationPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end