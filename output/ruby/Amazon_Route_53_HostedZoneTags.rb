require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_Route_53_HostedZoneTags
        ##
        class Route53HostedZoneTags < Resource


          property :key, 'Key'
          property :value, 'Value'

          def initialize(*args)
            super
            type 'Amazon_Route_53_HostedZoneTags'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def route_53_hostedzonetags(name, &block)
        r = Model::Template::Resource::Route53HostedZoneTags.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end