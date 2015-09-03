require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # ElasticLoadBalancing_Listener_Property_Type
        ##
        class ListenerPropertyType < Resource


          property :instance_port, 'InstancePort'
          property :instance_protocol, 'InstanceProtocol'
          property :load_balancer_port, 'LoadBalancerPort'
          property :protocol, 'Protocol'
          property :ssl_certificate_id, 'SSLCertificateId'

          def initialize(*args)
            super
            type 'ElasticLoadBalancing_Listener_Property_Type'

            @variables['PolicyNames'] = []
          end

          def policy_names(value)
            @variables['PolicyNames'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def listener_property_type(name, &block)
        r = Model::Template::Resource::ListenerPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end