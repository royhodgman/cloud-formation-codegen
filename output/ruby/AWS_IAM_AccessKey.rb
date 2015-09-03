require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_IAM_AccessKey
        ##
        class IAMAccessKey < Resource


          property :serial, 'Serial'
          property :status, 'Status'
          property :user_name, 'UserName'
          property :secret_access_key, 'SecretAccessKey'

          def initialize(*args)
            super
            type 'AWS_IAM_AccessKey'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def iam_accesskey(name, &block)
        r = Model::Template::Resource::IAMAccessKey.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end