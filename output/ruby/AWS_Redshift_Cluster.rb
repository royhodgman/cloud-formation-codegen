require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Redshift_Cluster
        ##
        class RedshiftCluster < Resource


          property :allow_version_upgrade, 'AllowVersionUpgrade'
          property :automated_snapshot_retention_period, 'AutomatedSnapshotRetentionPeriod'
          property :availability_zone, 'AvailabilityZone'
          property :cluster_parameter_group_name, 'ClusterParameterGroupName'
          property :cluster_subnet_group_name, 'ClusterSubnetGroupName'
          property :cluster_type, 'ClusterType'
          property :cluster_version, 'ClusterVersion'
          property :db_name, 'DBName'
          property :elastic_ip, 'ElasticIp'
          property :encrypted, 'Encrypted'
          property :hsm_client_certificate_identifier, 'HsmClientCertificateIdentifier'
          property :hsm_configuration_identifier, 'HsmConfigurationIdentifier'
          property :master_username, 'MasterUsername'
          property :master_user_password, 'MasterUserPassword'
          property :node_type, 'NodeType'
          property :number_of_nodes, 'NumberOfNodes'
          property :owner_account, 'OwnerAccount'
          property :port, 'Port'
          property :preferred_maintenance_window, 'PreferredMaintenanceWindow'
          property :publicly_accessible, 'PubliclyAccessible'
          property :snapshot_cluster_identifier, 'SnapshotClusterIdentifier'
          property :snapshot_identifier, 'SnapshotIdentifier'
          property :endpoint.address, 'Endpoint.Address'
          property :endpoint.port, 'Endpoint.Port'

          def initialize(*args)
            super
            type 'AWS_Redshift_Cluster'

            @variables['ClusterSecurityGroups'] = []
            @variables['VpcSecurityGroupIds'] = []
          end

          def cluster_security_groups(value)
            @variables['ClusterSecurityGroups'] << value
          end
          
          def vpc_security_group_ids(value)
            @variables['VpcSecurityGroupIds'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def redshift_cluster(name, &block)
        r = Model::Template::Resource::RedshiftCluster.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end