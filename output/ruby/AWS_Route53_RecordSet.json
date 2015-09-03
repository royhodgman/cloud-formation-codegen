require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Route53_RecordSet
        ##
        class Route53RecordSet < Resource


          property :alias_target, 'AliasTarget'
          property :comment, 'Comment'
          property :failover, 'Failover'
          property :geo_location, 'GeoLocation'
          property :health_check_id, 'HealthCheckId'
          property :hosted_zone_id, 'HostedZoneId'
          property :hosted_zone_name, 'HostedZoneName'
          property :name, 'Name'
          property :region, 'Region'
          property :set_identifier, 'SetIdentifier'
          property :ttl, 'TTL'
          property :type, 'Type'
          property :weight, 'Weight'

          def initialize(*args)
            super
            type 'AWS_Route53_RecordSet'

            @variables['ResourceRecords'] = []
          end

          def resource_records(value)
            @variables['ResourceRecords'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def route53_recordset(name, &block)
        r = Model::Template::Resource::Route53RecordSet.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end