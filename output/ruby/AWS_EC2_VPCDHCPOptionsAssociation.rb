require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_VPCDHCPOptionsAssociation
        ##
        class EC2VPCDHCPOptionsAssociation < Resource


          property :dhcp_options_id, 'DhcpOptionsId'
          property :vpc_id, 'VpcId'

          def initialize(*args)
            super
            type 'AWS_EC2_VPCDHCPOptionsAssociation'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_vpcdhcpoptionsassociation(name, &block)
        r = Model::Template::Resource::EC2VPCDHCPOptionsAssociation.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end