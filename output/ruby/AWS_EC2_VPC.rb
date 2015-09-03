require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_VPC
        ##
        class EC2VPC < Resource

          include Model::Mixin::Taggable

          property :cidr_block, 'CidrBlock'
          property :enable_dns_support, 'EnableDnsSupport'
          property :enable_dns_hostnames, 'EnableDnsHostnames'
          property :instance_tenancy, 'InstanceTenancy'
          property :tags, 'Tags'
          property :default_network_acl, 'DefaultNetworkAcl'
          property :default_security_group, 'DefaultSecurityGroup'

          def initialize(*args)
            super
            type 'AWS_EC2_VPC'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_vpc(name, &block)
        r = Model::Template::Resource::EC2VPC.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end