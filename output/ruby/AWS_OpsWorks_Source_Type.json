require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_OpsWorks_Source_Type
        ##
        class OpsWorksSourceType < Resource


          property :password, 'Password'
          property :revision, 'Revision'
          property :ssh_key, 'SshKey'
          property :type, 'Type'
          property :url, 'Url'
          property :username, 'Username'

          def initialize(*args)
            super
            type 'AWS_OpsWorks_Source_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def opsworks_source_type(name, &block)
        r = Model::Template::Resource::OpsWorksSourceType.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end