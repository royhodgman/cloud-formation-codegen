require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2_Network_Interface_Association
        ##
        class NetworkInterfaceAssociation < Resource


          property :attachment_id, 'AttachmentID'
          property :instance_id, 'InstanceID'
          property :public_ip, 'PublicIp'
          property :ip_owner_id, 'IpOwnerId'

          def initialize(*args)
            super
            type 'EC2_Network_Interface_Association'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def network_interface_association(name, &block)
        r = Model::Template::Resource::NetworkInterfaceAssociation.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end