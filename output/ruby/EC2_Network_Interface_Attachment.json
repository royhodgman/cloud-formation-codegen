require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2_Network_Interface_Attachment
        ##
        class NetworkInterfaceAttachment < Resource


          property :attachment_id, 'AttachmentID'
          property :instance_id, 'InstanceID'

          def initialize(*args)
            super
            type 'EC2_Network_Interface_Attachment'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def network_interface_attachment(name, &block)
        r = Model::Template::Resource::NetworkInterfaceAttachment.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end