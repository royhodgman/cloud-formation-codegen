require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ElastiCache_CacheCluster
        ##
        class ElastiCacheCacheCluster < Resource


          property :auto_minor_version_upgrade, 'AutoMinorVersionUpgrade'
          property :az_mode, 'AZMode'
          property :cache_node_type, 'CacheNodeType'
          property :cache_parameter_group_name, 'CacheParameterGroupName'
          property :cache_subnet_group_name, 'CacheSubnetGroupName'
          property :cluster_name, 'ClusterName'
          property :engine, 'Engine'
          property :engine_version, 'EngineVersion'
          property :notification_topic_arn, 'NotificationTopicArn'
          property :num_cache_nodes, 'NumCacheNodes'
          property :port, 'Port'
          property :preferred_availability_zone, 'PreferredAvailabilityZone'
          property :preferred_maintenance_window, 'PreferredMaintenanceWindow'
          property :snapshot_name, 'SnapshotName'
          property :snapshot_retention_limit, 'SnapshotRetentionLimit'
          property :snapshot_window, 'SnapshotWindow'
          property :configuration_endpoint.address, 'ConfigurationEndpoint.Address'
          property :configuration_endpoint.port, 'ConfigurationEndpoint.Port'

          def initialize(*args)
            super
            type 'AWS_ElastiCache_CacheCluster'

            @variables['CacheSecurityGroupNames'] = []
            @variables['PreferredAvailabilityZones'] = []
            @variables['SnapshotArns'] = []
            @variables[' VpcSecurityGroupIds '] = []
          end

          def cache_security_group_names(value)
            @variables['CacheSecurityGroupNames'] << value
          end
          
          def preferred_availability_zones(value)
            @variables['PreferredAvailabilityZones'] << value
          end
          
          def snapshot_arns(value)
            @variables['SnapshotArns'] << value
          end
          
          def  vpc_security_group_ids (value)
            @variables[' VpcSecurityGroupIds '] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def elasticache_cachecluster(name, &block)
        r = Model::Template::Resource::ElastiCacheCacheCluster.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end