require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Lifecycle_Rule
        ##
        class S3LifecycleRule < Resource


          property :expiration_date, 'ExpirationDate'
          property :expiration_in_days, 'ExpirationInDays'
          property :id, 'Id'
          property :noncurrent_version_expiration_in_days, 'NoncurrentVersionExpirationInDays'
          property :noncurrent_version_transition, 'NoncurrentVersionTransition'
          property :prefix, 'Prefix'
          property :status, 'Status'
          property :transition, 'Transition'

          def initialize(*args)
            super
            type 'Amazon_S3_Lifecycle_Rule'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_lifecycle_rule(name, &block)
        r = Model::Template::Resource::S3LifecycleRule.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end