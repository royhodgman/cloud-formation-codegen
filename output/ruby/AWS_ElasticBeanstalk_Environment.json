require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ElasticBeanstalk_Environment
        ##
        class ElasticBeanstalkEnvironment < Resource

          include Model::Mixin::Taggable

          property :application_name, 'ApplicationName'
          property :cname_prefix, 'CNAMEPrefix'
          property :description, 'Description'
          property :environment_name, 'EnvironmentName'
          property :solution_stack_name, 'SolutionStackName'
          property :tags, 'Tags'
          property :template_name, 'TemplateName'
          property :tier, 'Tier'
          property :version_label, 'VersionLabel'
          property :endpoint_url, 'EndpointURL'

          def initialize(*args)
            super
            type 'AWS_ElasticBeanstalk_Environment'

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
      def elasticbeanstalk_environment(name, &block)
        r = Model::Template::Resource::ElasticBeanstalkEnvironment.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end