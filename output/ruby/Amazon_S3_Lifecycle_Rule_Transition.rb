require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Lifecycle_Rule_Transition
        ##
        class S3LifecycleRuleTransition < Resource


          property :storage_class, 'StorageClass'
          property :transition_date, 'TransitionDate'
          property :transition_in_days, 'TransitionInDays'

          def initialize(*args)
            super
            type 'Amazon_S3_Lifecycle_Rule_Transition'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_lifecycle_rule_transition(name, &block)
        r = Model::Template::Resource::S3LifecycleRuleTransition.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end