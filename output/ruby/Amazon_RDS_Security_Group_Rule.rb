require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_RDS_Security_Group_Rule
        ##
        class RDSSecurityGroupRule < Resource


          property :cidrip, 'CIDRIP'
          property :ec2_security_group_id, 'EC2SecurityGroupId'
          property :ec2_security_group_name, 'EC2SecurityGroupName'
          property :ec2_security_group_owner_id, 'EC2SecurityGroupOwnerId'

          def initialize(*args)
            super
            type 'Amazon_RDS_Security_Group_Rule'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def rds_security_group_rule(name, &block)
        r = Model::Template::Resource::RDSSecurityGroupRule.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end