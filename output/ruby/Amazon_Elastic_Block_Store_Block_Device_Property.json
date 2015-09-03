require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_Elastic_Block_Store_Block_Device_Property
        ##
        class ElasticBlockStoreBlockDeviceProperty < Resource


          property :delete_on_termination, 'DeleteOnTermination'
          property :encrypted, 'Encrypted'
          property :iops, 'Iops'
          property :snapshot_id, 'SnapshotId'
          property :volume_size, 'VolumeSize'
          property :volume_type, 'VolumeType'

          def initialize(*args)
            super
            type 'Amazon_Elastic_Block_Store_Block_Device_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def elastic_block_store_block_device_property(name, &block)
        r = Model::Template::Resource::ElasticBlockStoreBlockDeviceProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end