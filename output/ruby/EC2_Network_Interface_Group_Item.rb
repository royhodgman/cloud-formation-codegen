require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2_Network_Interface_Group_Item
        ##
        class NetworkInterfaceGroupItem < Resource


          property :key, 'Key'
          property :value, 'Value'

          def initialize(*args)
            super
            type 'EC2_Network_Interface_Group_Item'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def network_interface_group_item(name, &block)
        r = Model::Template::Resource::NetworkInterfaceGroupItem.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end