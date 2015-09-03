require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_S3_BucketPolicy
        ##
        class S3BucketPolicy < Resource


          property :bucket, 'Bucket'
          property :policy_document, 'PolicyDocument'

          def initialize(*args)
            super
            type 'AWS_S3_BucketPolicy'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_bucketpolicy(name, &block)
        r = Model::Template::Resource::S3BucketPolicy.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end