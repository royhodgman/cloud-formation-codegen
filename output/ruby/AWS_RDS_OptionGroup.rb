require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_RDS_OptionGroup
        ##
        class RDSOptionGroup < Resource

          include Model::Mixin::Taggable

          property :engine_name, 'EngineName'
          property :major_engine_version, 'MajorEngineVersion'
          property :option_group_description, 'OptionGroupDescription'
          property :option_configurations, 'OptionConfigurations'
          property :tags, 'Tags'

          def initialize(*args)
            super
            type 'AWS_RDS_OptionGroup'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def rds_optiongroup(name, &block)
        r = Model::Template::Resource::RDSOptionGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end