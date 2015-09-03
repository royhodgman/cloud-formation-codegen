require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_RDS_DBSecurityGroup
        ##
        class RDSDBSecurityGroup < Resource

          include Model::Mixin::Taggable

          property :ec2_vpc_id, 'EC2VpcId'
          property :group_description, 'GroupDescription'

          def initialize(*args)
            super
            type 'AWS_RDS_DBSecurityGroup'

            @variables['DBSecurityGroupIngress'] = []
            @variables['Tags'] = []
          end

          def db_security_group_ingress(value)
            @variables['DBSecurityGroupIngress'] << value
          end
          
          def tags(value)
            @variables['Tags'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def rds_dbsecuritygroup(name, &block)
        r = Model::Template::Resource::RDSDBSecurityGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end