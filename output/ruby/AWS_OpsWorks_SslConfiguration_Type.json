require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_SslConfiguration_Type
        ##
        class OpsWorksSslConfigurationType < Resource


          property :certificate, 'Certificate'
          property :chain, 'Chain'
          property :private_key, 'PrivateKey'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_SslConfiguration_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_sslconfiguration_type(name, &block)
        r = Model::Template::Resource::OpsWorksSslConfigurationType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end