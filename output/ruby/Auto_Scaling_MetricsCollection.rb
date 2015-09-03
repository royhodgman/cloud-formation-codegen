require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Auto_Scaling_MetricsCollection
        ##
        class ScalingMetricsCollection < Resource


          property :granularity, 'Granularity'

          def initialize(*args)
            super
            type 'Auto_Scaling_MetricsCollection'

            @variables['Metrics'] = []
          end

          def metrics(value)
            @variables['Metrics'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def scaling_metricscollection(name, &block)
        r = Model::Template::Resource::ScalingMetricsCollection.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end