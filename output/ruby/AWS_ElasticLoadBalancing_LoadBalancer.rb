require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ElasticLoadBalancing_LoadBalancer
        ##
        class ElasticLoadBalancingLoadBalancer < Resource

          include Model::Mixin::Taggable

          property :access_logging_policy, 'AccessLoggingPolicy'
          property :connection_draining_policy, 'ConnectionDrainingPolicy'
          property :connection_settings, 'ConnectionSettings'
          property :cross_zone, 'CrossZone'
          property :health_check, 'HealthCheck'
          property :load_balancer_name, 'LoadBalancerName'
          property :scheme, 'Scheme'
          property :tags, 'Tags'
          property :canonical_hosted_zone_name, 'CanonicalHostedZoneName'
          property :canonical_hosted_zone_name_id, 'CanonicalHostedZoneNameID'
          property :dns_name, 'DNSName'
          property :source_security_group.group_name, 'SourceSecurityGroup.GroupName'
          property :source_security_group.owner_alias, 'SourceSecurityGroup.OwnerAlias'

          def initialize(*args)
            super
            type 'AWS_ElasticLoadBalancing_LoadBalancer'

            @variables['AppCookieStickinessPolicy'] = []
            @variables['AvailabilityZones'] = []
            @variables['Instances'] = []
            @variables['LBCookieStickinessPolicy'] = []
            @variables['Listeners'] = []
            @variables['Policies'] = []
            @variables['SecurityGroups'] = []
            @variables['Subnets'] = []
          end

          def app_cookie_stickiness_policy(value)
            @variables['AppCookieStickinessPolicy'] << value
          end
          
          def availability_zones(value)
            @variables['AvailabilityZones'] << value
          end
          
          def instances(value)
            @variables['Instances'] << value
          end
          
          def lb_cookie_stickiness_policy(value)
            @variables['LBCookieStickinessPolicy'] << value
          end
          
          def listeners(value)
            @variables['Listeners'] << value
          end
          
          def policies(value)
            @variables['Policies'] << value
          end
          
          def security_groups(value)
            @variables['SecurityGroups'] << value
          end
          
          def subnets(value)
            @variables['Subnets'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def elasticloadbalancing_loadbalancer(name, &block)
        r = Model::Template::Resource::ElasticLoadBalancingLoadBalancer.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end