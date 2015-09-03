require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_RDS_EventSubscription
        ##
        class RDSEventSubscription < Resource


          property :enabled, 'Enabled'
          property :sns_topic_arn, 'SnsTopicArn'
          property :source_type , 'SourceType '

          def initialize(*args)
            super
            type 'AWS_RDS_EventSubscription'

            @variables['EventCategories'] = []
            @variables['SourceIds'] = []
          end

          def event_categories(value)
            @variables['EventCategories'] << value
          end
          
          def source_ids(value)
            @variables['SourceIds'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def rds_eventsubscription(name, &block)
        r = Model::Template::Resource::RDSEventSubscription.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end