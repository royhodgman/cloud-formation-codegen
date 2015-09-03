require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_LoadBasedAutoScaling_Type
        ##
        class OpsWorksLoadBasedAutoScalingType < Resource


          property :down_scaling, 'DownScaling'
          property :enable, 'Enable'
          property :up_scaling, 'UpScaling'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_LoadBasedAutoScaling_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_loadbasedautoscaling_type(name, &block)
        r = Model::Template::Resource::OpsWorksLoadBasedAutoScalingType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end