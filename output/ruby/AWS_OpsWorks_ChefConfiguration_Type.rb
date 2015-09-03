require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_ChefConfiguration_Type
        ##
        class OpsWorksChefConfigurationType < Resource


          property :berkshelf_version, 'BerkshelfVersion'
          property :manage_berkshelf, 'ManageBerkshelf'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_ChefConfiguration_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_chefconfiguration_type(name, &block)
        r = Model::Template::Resource::OpsWorksChefConfigurationType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end