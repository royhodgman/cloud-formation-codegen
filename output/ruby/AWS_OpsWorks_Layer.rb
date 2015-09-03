require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_Layer
        ##
        class OpsWorksLayer < Resource


          property :auto_assign_elastic_ips, 'AutoAssignElasticIps'
          property :auto_assign_public_ips, 'AutoAssignPublicIps'
          property :custom_instance_profile_arn, 'CustomInstanceProfileArn'
          property :custom_recipes, 'CustomRecipes'
          property :enable_auto_healing, 'EnableAutoHealing'
          property :install_updates_on_boot, 'InstallUpdatesOnBoot'
          property :lifecycle_event_configuration, 'LifecycleEventConfiguration'
          property :load_based_auto_scaling, 'LoadBasedAutoScaling'
          property :name, 'Name'
          property :shortname, 'Shortname'
          property :stack_id, 'StackId'
          property :type, 'Type'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_Layer'

            @variables['Attributes'] = []
            @variables['CustomSecurityGroupIds'] = []
            @variables['Packages'] = []
            @variables['VolumeConfigurations'] = []
          end

          def attributes(value)
            @variables['Attributes'] << value
          end
          
          def custom_security_group_ids(value)
            @variables['CustomSecurityGroupIds'] << value
          end
          
          def packages(value)
            @variables['Packages'] << value
          end
          
          def volume_configurations(value)
            @variables['VolumeConfigurations'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_layer(name, &block)
        r = Model::Template::Resource::OpsWorksLayer.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end