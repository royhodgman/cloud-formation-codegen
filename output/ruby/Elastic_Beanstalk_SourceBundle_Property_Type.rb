require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Elastic_Beanstalk_SourceBundle_Property_Type
        ##
        class BeanstalkSourceBundlePropertyType < Resource


          property :s3_bucket, 'S3Bucket'
          property :s3_key, 'S3Key'

          def initialize(*args)
            super
            type 'Elastic_Beanstalk_SourceBundle_Property_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def beanstalk_sourcebundle_property_type(name, &block)
        r = Model::Template::Resource::BeanstalkSourceBundlePropertyType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end