require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ElasticBeanstalk_ConfigurationTemplate
        ##
        class ElasticBeanstalkConfigurationTemplate < Resource


          property :application_name, 'ApplicationName'
          property :description, 'Description'
          property :environment_id, 'EnvironmentId'
          property :solution_stack_name, 'SolutionStackName'
          property :source_configuration, 'SourceConfiguration'

          def initialize(*args)
            super
            type 'AWS_ElasticBeanstalk_ConfigurationTemplate'

            @variables['OptionSettings'] = []
          end

          def option_settings(value)
            @variables['OptionSettings'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def elasticbeanstalk_configurationtemplate(name, &block)
        r = Model::Template::Resource::ElasticBeanstalkConfigurationTemplate.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end