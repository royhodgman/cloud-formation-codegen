require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_RDS_OptionGroup_OptionConfigurations
        ##
        class RDSOptionGroupOptionConfigurations < Resource


          property :option_name, 'OptionName'
          property :option_settings, 'OptionSettings'
          property :port, 'Port'

          def initialize(*args)
            super
            type 'Amazon_RDS_OptionGroup_OptionConfigurations'

            @variables['DBSecurityGroupMemberships'] = []
            @variables['VpcSecurityGroupMemberships'] = []
          end

          def db_security_group_memberships(value)
            @variables['DBSecurityGroupMemberships'] << value
          end
          
          def vpc_security_group_memberships(value)
            @variables['VpcSecurityGroupMemberships'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def rds_optiongroup_optionconfigurations(name, &block)
        r = Model::Template::Resource::RDSOptionGroupOptionConfigurations.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end