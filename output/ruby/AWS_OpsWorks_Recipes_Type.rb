require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_Recipes_Type
        ##
        class OpsWorksRecipesType < Resource



          def initialize(*args)
            super
            type 'AWS_OpsWorks_Recipes_Type'

            @variables['Configure'] = []
            @variables['Deploy'] = []
            @variables['Setup'] = []
            @variables['Shutdown'] = []
            @variables['Undeploy'] = []
          end

          def configure(value)
            @variables['Configure'] << value
          end
          
          def deploy(value)
            @variables['Deploy'] << value
          end
          
          def setup(value)
            @variables['Setup'] << value
          end
          
          def shutdown(value)
            @variables['Shutdown'] << value
          end
          
          def undeploy(value)
            @variables['Undeploy'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_recipes_type(name, &block)
        r = Model::Template::Resource::OpsWorksRecipesType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end