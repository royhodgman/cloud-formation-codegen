require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_StackConfigurationManager_Type
        ##
        class OpsWorksStackConfigurationManagerType < Resource


          property :name, 'Name'
          property :version, 'Version'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_StackConfigurationManager_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_stackconfigurationmanager_type(name, &block)
        r = Model::Template::Resource::OpsWorksStackConfigurationManagerType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end