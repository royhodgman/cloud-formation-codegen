require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_RDS_OptionGroup_OptionConfigurations_OptionSettings
        ##
        class RDSOptionGroupOptionConfigurationsOptionSettings < Resource


          property :name, 'Name'
          property :value, 'Value'

          def initialize(*args)
            super
            type 'Amazon_RDS_OptionGroup_OptionConfigurations_OptionSettings'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def rds_optiongroup_optionconfigurations_optionsettings(name, &block)
        r = Model::Template::Resource::RDSOptionGroupOptionConfigurationsOptionSettings.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end