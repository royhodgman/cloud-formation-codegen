require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_TimeBasedAutoScaling_Type
        ##
        class OpsWorksTimeBasedAutoScalingType < Resource


          property :friday, 'Friday'
          property :monday, 'Monday'
          property :saturday, 'Saturday'
          property :sunday, 'Sunday'
          property :thursday, 'Thursday'
          property :tuesday, 'Tuesday'
          property :wednesday, 'Wednesday'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_TimeBasedAutoScaling_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_timebasedautoscaling_type(name, &block)
        r = Model::Template::Resource::OpsWorksTimeBasedAutoScalingType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end