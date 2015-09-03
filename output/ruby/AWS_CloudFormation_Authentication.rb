require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_CloudFormation_Authentication
        ##
        class CloudFormationAuthentication < Resource


          property :access_key_id, 'accessKeyId'
          property :password, 'password'
          property :secret_key, 'secretKey'
          property :type, 'type'
          property :username, 'username'
          property :role_name, 'roleName'

          def initialize(*args)
            super
            type 'AWS_CloudFormation_Authentication'

            @variables['buckets'] = []
            @variables['uris'] = []
          end

          def buckets(value)
            @variables['buckets'] << value
          end
          
          def uris(value)
            @variables['uris'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def cloudformation_authentication(name, &block)
        r = Model::Template::Resource::CloudFormationAuthentication.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end