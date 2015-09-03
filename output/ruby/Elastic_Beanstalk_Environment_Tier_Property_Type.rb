require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic_Beanstalk_Environment_Tier_Property_Type
        ##
        class BeanstalkEnvironmentTierPropertyType < Resource


          property :name, 'Name'
          property :type, 'Type'
          property :version, 'Version'

          def initialize(*args)
            super
            type 'Elastic_Beanstalk_Environment_Tier_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def beanstalk_environment_tier_property_type(name, &block)
        r = Model::Template::Resource::BeanstalkEnvironmentTierPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end