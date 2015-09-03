require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_Elastic_File_System_FileSystem_FileSystemTags
        ##
        class ElasticFileSystemFileSystemFileSystemTags < Resource


          property :key, 'Key'
          property :value, 'Value'

          def initialize(*args)
            super
            type 'Amazon_Elastic_File_System_FileSystem_FileSystemTags'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def elastic_file_system_filesystem_filesystemtags(name, &block)
        r = Model::Template::Resource::ElasticFileSystemFileSystemFileSystemTags.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end