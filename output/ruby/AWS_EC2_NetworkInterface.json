require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_NetworkInterface
        ##
        class EC2NetworkInterface < Resource

          include Model::Mixin::Taggable

          property :description, 'Description'
          property :private_ip_address, 'PrivateIpAddress'
          property :secondary_private_ip_address_count, 'SecondaryPrivateIpAddressCount'
          property :source_dest_check, 'SourceDestCheck'
          property :subnet_id, 'SubnetId'
          property :tags, 'Tags'
          property :primary_private_ip_address, 'PrimaryPrivateIpAddress'
          property :secondary_private_ip_addresses, 'SecondaryPrivateIpAddresses'

          def initialize(*args)
            super
            type 'AWS_EC2_NetworkInterface'

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
      def ec2_networkinterface(name, &block)
        r = Model::Template::Resource::EC2NetworkInterface.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end