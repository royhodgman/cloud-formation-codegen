require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_Logging
        ##
        class Logging < Resource


          property :bucket, 'Bucket'
          property :include_cookies, 'IncludeCookies'
          property :prefix, 'Prefix'

          def initialize(*args)
            super
            type 'CloudFront_Logging'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def logging(name, &block)
        r = Model::Template::Resource::Logging.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end