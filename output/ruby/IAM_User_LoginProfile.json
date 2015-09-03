require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # IAM_User_LoginProfile
        ##
        class UserLoginProfile < Resource


          property :password, 'Password'
          property :password_reset_required, 'PasswordResetRequired'

          def initialize(*args)
            super
            type 'IAM_User_LoginProfile'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def user_loginprofile(name, &block)
        r = Model::Template::Resource::UserLoginProfile.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end