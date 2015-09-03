require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_CloudFormation_Stack
        ##
        class CloudFormationStack < Resource


          property :parameters, 'Parameters'
          property :template_url, 'TemplateURL'
          property :timeout_in_minutes, 'TimeoutInMinutes'
          property :outputs.nested_stack_output_name, 'Outputs.NestedStackOutputName'

          def initialize(*args)
            super
            type 'AWS_CloudFormation_Stack'

            @variables['NotificationARNs'] = []
          end

          def notification_ar_ns(value)
            @variables['NotificationARNs'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def cloudformation_stack(name, &block)
        r = Model::Template::Resource::CloudFormationStack.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end