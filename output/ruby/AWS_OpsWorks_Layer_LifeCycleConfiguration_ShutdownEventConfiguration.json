require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_Layer_LifeCycleConfiguration_ShutdownEventConfiguration
        ##
        class OpsWorksLayerLifeCycleConfigurationShutdownEventConfiguration < Resource


          property :delay_until_elb_connections_drained, 'DelayUntilElbConnectionsDrained'
          property :execution_timeout, 'ExecutionTimeout'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_Layer_LifeCycleConfiguration_ShutdownEventConfiguration'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_layer_lifecycleconfiguration_shutdowneventconfiguration(name, &block)
        r = Model::Template::Resource::OpsWorksLayerLifeCycleConfigurationShutdownEventConfiguration.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end