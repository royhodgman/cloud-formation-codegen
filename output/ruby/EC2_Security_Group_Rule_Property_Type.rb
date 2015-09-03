require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # EC2_Security_Group_Rule_Property_Type
        ##
        class SecurityGroupRulePropertyType < Resource


          property :cidr_ip, 'CidrIp'
          property :destination_security_group_id (security_group_egress only), 'DestinationSecurityGroupId (SecurityGroupEgress only)'
          property :from_port, 'FromPort'
          property :ip_protocol, 'IpProtocol'
          property :source_security_group_id (security_group_ingress only), 'SourceSecurityGroupId (SecurityGroupIngress only)'
          property :source_security_group_name (security_group_ingress only), 'SourceSecurityGroupName (SecurityGroupIngress only)'
          property :source_security_group_owner_id (security_group_ingress only), 'SourceSecurityGroupOwnerId (SecurityGroupIngress only)'
          property :to_port, 'ToPort'

          def initialize(*args)
            super
            type 'EC2_Security_Group_Rule_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def security_group_rule_property_type(name, &block)
        r = Model::Template::Resource::SecurityGroupRulePropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end