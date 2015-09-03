require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_Layer_LifeCycleConfiguration
        ##
        class OpsWorksLayerLifeCycleConfiguration < Resource


          property :shutdown_event_configuration, 'ShutdownEventConfiguration'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_Layer_LifeCycleConfiguration'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_layer_lifecycleconfiguration(name, &block)
        r = Model::Template::Resource::OpsWorksLayerLifeCycleConfiguration.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end