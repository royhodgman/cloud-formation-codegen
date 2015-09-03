require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2_Network_Interface_Private_IP_Specification
        ##
        class NetworkInterfacePrivateIPSpecification < Resource


          property :private_ip_address, 'PrivateIpAddress'
          property :primary, 'Primary'

          def initialize(*args)
            super
            type 'EC2_Network_Interface_Private_IP_Specification'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def network_interface_private_ip_specification(name, &block)
        r = Model::Template::Resource::NetworkInterfacePrivateIPSpecification.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end