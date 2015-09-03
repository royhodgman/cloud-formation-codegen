require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Logs_LogGroup
        ##
        class LogsLogGroup < Resource


          property :retention_in_days, 'RetentionInDays'

          def initialize(*args)
            super
            type 'AWS_Logs_LogGroup'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def logs_loggroup(name, &block)
        r = Model::Template::Resource::LogsLogGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end