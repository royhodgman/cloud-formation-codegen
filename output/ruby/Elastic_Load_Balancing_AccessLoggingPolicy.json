require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic_Load_Balancing_AccessLoggingPolicy
        ##
        class LoadBalancingAccessLoggingPolicy < Resource


          property :emit_interval, 'EmitInterval'
          property :enabled, 'Enabled'
          property :s3_bucket_name, 'S3BucketName'
          property :s3_bucket_prefix, 'S3BucketPrefix'

          def initialize(*args)
            super
            type 'Elastic_Load_Balancing_AccessLoggingPolicy'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def load_balancing_accessloggingpolicy(name, &block)
        r = Model::Template::Resource::LoadBalancingAccessLoggingPolicy.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end