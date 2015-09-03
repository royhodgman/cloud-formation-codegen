require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_ElastiCache_ReplicationGroup
        ##
        class ElastiCacheReplicationGroup < Resource


          property :automatic_failover_enabled, 'AutomaticFailoverEnabled'
          property :auto_minor_version_upgrade, 'AutoMinorVersionUpgrade'
          property :cache_node_type, 'CacheNodeType'
          property :cache_parameter_group_name, 'CacheParameterGroupName'
          property :cache_subnet_group_name, 'CacheSubnetGroupName'
          property :engine, 'Engine'
          property :engine_version, 'EngineVersion'
          property :notification_topic_arn, 'NotificationTopicArn'
          property :num_cache_clusters, 'NumCacheClusters'
          property :port, 'Port'
          property :preferred_maintenance_window, 'PreferredMaintenanceWindow'
          property :replication_group_description, 'ReplicationGroupDescription'
          property :snapshot_retention_limit, 'SnapshotRetentionLimit'
          property :snapshot_window, 'SnapshotWindow'
          property :primary_end_point.address, 'PrimaryEndPoint.Address'
          property :primary_end_point.port, 'PrimaryEndPoint.Port'
          property :read_end_point.addresses, 'ReadEndPoint.Addresses'
          property :read_end_point.ports, 'ReadEndPoint.Ports'

          def initialize(*args)
            super
            type 'AWS_ElastiCache_ReplicationGroup'

            @variables['CacheSecurityGroupNames'] = []
            @variables['PreferredCacheClusterAZs'] = []
            @variables['SecurityGroupIds'] = []
            @variables['SnapshotArns'] = []
          end

          def cache_security_group_names(value)
            @variables['CacheSecurityGroupNames'] << value
          end
          
          def preferred_cache_cluster_a_zs(value)
            @variables['PreferredCacheClusterAZs'] << value
          end
          
          def security_group_ids(value)
            @variables['SecurityGroupIds'] << value
          end
          
          def snapshot_arns(value)
            @variables['SnapshotArns'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def elasticache_replicationgroup(name, &block)
        r = Model::Template::Resource::ElastiCacheReplicationGroup.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end