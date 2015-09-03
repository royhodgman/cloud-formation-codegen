require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic_Beanstalk_OptionSettings_Property_Type
        ##
        class BeanstalkOptionSettingsPropertyType < Resource


          property :namespace, 'Namespace'
          property :option_name, 'OptionName'
          property :value, 'Value'

          def initialize(*args)
            super
            type 'Elastic_Beanstalk_OptionSettings_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def beanstalk_optionsettings_property_type(name, &block)
        r = Model::Template::Resource::BeanstalkOptionSettingsPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end