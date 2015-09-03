require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_EFS_FileSystem
        ##
        class EFSFileSystem < Resource


          property :file_system_tags, 'FileSystemTags'

          def initialize(*args)
            super
            type 'AWS_EFS_FileSystem'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def efs_filesystem(name, &block)
        r = Model::Template::Resource::EFSFileSystem.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end