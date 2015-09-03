require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Lambda_Function_Code
        ##
        class LambdaFunctionCode < Resource


          property :s3_bucket, 'S3Bucket'
          property :s3_key, 'S3Key'
          property :s3_object_version, 'S3ObjectVersion'
          property :zip_file, 'ZipFile'
          property :event, 'event'
          property :context, 'context'
          property :response_status, 'responseStatus'
          property :response_data, 'responseData'
          property :physical_resource_id, 'physicalResourceId'

          def initialize(*args)
            super
            type 'AWS_Lambda_Function_Code'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def lambda_function_code(name, &block)
        r = Model::Template::Resource::LambdaFunctionCode.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end