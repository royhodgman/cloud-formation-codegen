require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2_NetworkInterface_Embedded_Property_Type
        ##
        class NetworkInterfaceEmbeddedPropertyType < Resource


          property :associate_public_ip_address, 'AssociatePublicIpAddress'
          property :delete_on_termination, 'DeleteOnTermination'
          property :description, 'Description'
          property :device_index, 'DeviceIndex'
          property :network_interface_id, 'NetworkInterfaceId'
          property :private_ip_address, 'PrivateIpAddress'
          property :secondary_private_ip_address_count, 'SecondaryPrivateIpAddressCount'
          property :subnet_id, 'SubnetId'

          def initialize(*args)
            super
            type 'EC2_NetworkInterface_Embedded_Property_Type'

            @variables['GroupSet'] = []
            @variables['PrivateIpAddresses'] = []
          end

          def group_set(value)
            @variables['GroupSet'] << value
          end
          
          def private_ip_addresses(value)
            @variables['PrivateIpAddresses'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def networkinterface_embedded_property_type(name, &block)
        r = Model::Template::Resource::NetworkInterfaceEmbeddedPropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end