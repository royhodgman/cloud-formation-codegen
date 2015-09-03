require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Versioning_Configuration
        ##
        class S3VersioningConfiguration < Resource


          property :status, 'Status'

          def initialize(*args)
            super
            type 'Amazon_S3_Versioning_Configuration'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_versioning_configuration(name, &block)
        r = Model::Template::Resource::S3VersioningConfiguration.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end