require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EC2_SubnetNetworkAclAssociation
        ##
        class EC2SubnetNetworkAclAssociation < Resource


          property :subnet_id, 'SubnetId'
          property :network_acl_id, 'NetworkAclId'
          property :association_id, 'AssociationId'

          def initialize(*args)
            super
            type 'AWS_EC2_SubnetNetworkAclAssociation'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def ec2_subnetnetworkaclassociation(name, &block)
        r = Model::Template::Resource::EC2SubnetNetworkAclAssociation.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end