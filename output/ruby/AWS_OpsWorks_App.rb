require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_App
        ##
        class OpsWorksApp < Resource


          property :app_source, 'AppSource'
          property :description, 'Description'
          property :enable_ssl, 'EnableSsl'
          property :name, 'Name'
          property :shortname, 'Shortname'
          property :ssl_configuration, 'SslConfiguration'
          property :stack_id, 'StackId'
          property :type, 'Type'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_App'

            @variables['Attributes'] = []
            @variables['Domains'] = []
          end

          def attributes(value)
            @variables['Attributes'] << value
          end
          
          def domains(value)
            @variables['Domains'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_app(name, &block)
        r = Model::Template::Resource::OpsWorksApp.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end