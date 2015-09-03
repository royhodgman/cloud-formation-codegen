require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Logging_Configuration
        ##
        class S3LoggingConfiguration < Resource


          property :destination_bucket_name, 'DestinationBucketName'
          property :log_file_prefix, 'LogFilePrefix'

          def initialize(*args)
            super
            type 'Amazon_S3_Logging_Configuration'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_logging_configuration(name, &block)
        r = Model::Template::Resource::S3LoggingConfiguration.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end