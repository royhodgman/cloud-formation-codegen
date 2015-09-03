require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_SDB_Domain
        ##
        class SDBDomain < Resource



          def initialize(*args)
            super
            type 'AWS_SDB_Domain'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def sdb_domain(name, &block)
        r = Model::Template::Resource::SDBDomain.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end