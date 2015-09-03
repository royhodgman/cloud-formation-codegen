require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ElasticBeanstalk_Application
        ##
        class ElasticBeanstalkApplication < Resource


          property :application_name, 'ApplicationName'
          property :description, 'Description'

          def initialize(*args)
            super
            type 'AWS_ElasticBeanstalk_Application'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def elasticbeanstalk_application(name, &block)
        r = Model::Template::Resource::ElasticBeanstalkApplication.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end