require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # IAM_Policies
        ##
        class Policies < Resource


          property :policy_document, 'PolicyDocument'
          property :policy_name, 'PolicyName'

          def initialize(*args)
            super
            type 'IAM_Policies'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def policies(name, &block)
        r = Model::Template::Resource::Policies.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end