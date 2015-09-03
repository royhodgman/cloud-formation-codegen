require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Name_Type
        ##
        class Type < Resource



          def initialize(*args)
            super
            type 'Name_Type'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def type(name, &block)
        r = Model::Template::Resource::Type.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end