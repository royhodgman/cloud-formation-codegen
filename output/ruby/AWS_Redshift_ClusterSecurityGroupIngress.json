require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Redshift_ClusterSecurityGroupIngress
        ##
        class RedshiftClusterSecurityGroupIngress < Resource


          property :cluster_security_group_name, 'ClusterSecurityGroupName'
          property :cidrip, 'CIDRIP'
          property :ec2_security_group_name, 'EC2SecurityGroupName'
          property :ec2_security_group_owner_id, 'EC2SecurityGroupOwnerId'

          def initialize(*args)
            super
            type 'AWS_Redshift_ClusterSecurityGroupIngress'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def redshift_clustersecuritygroupingress(name, &block)
        r = Model::Template::Resource::RedshiftClusterSecurityGroupIngress.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end