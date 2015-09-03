require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Route53_RecordSetGroup
        ##
        class Route53RecordSetGroup < Resource


          property :hosted_zone_id, 'HostedZoneId'
          property :hosted_zone_name, 'HostedZoneName'
          property :comment, 'Comment'

          def initialize(*args)
            super
            type 'AWS_Route53_RecordSetGroup'

            @variables['RecordSets'] = []
          end

          def record_sets(value)
            @variables['RecordSets'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def route53_recordsetgroup(name, &block)
        r = Model::Template::Resource::Route53RecordSetGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end