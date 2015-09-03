require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_DHCPOptions
        ##
        class EC2DHCPOptions < Resource

          include Model::Mixin::Taggable

          property :domain_name, 'DomainName'
          property :tags, 'Tags'

          def initialize(*args)
            super
            type 'AWS_EC2_DHCPOptions'

            @variables['DomainNameServers'] = []
            @variables['NetbiosNameServers'] = []
            @variables['NetbiosNodeType'] = []
            @variables['NtpServers'] = []
          end

          def domain_name_servers(value)
            @variables['DomainNameServers'] << value
          end
          
          def netbios_name_servers(value)
            @variables['NetbiosNameServers'] << value
          end
          
          def netbios_node_type(value)
            @variables['NetbiosNodeType'] << value
          end
          
          def ntp_servers(value)
            @variables['NtpServers'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_dhcpoptions(name, &block)
        r = Model::Template::Resource::EC2DHCPOptions.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end