require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Lambda_Function
        ##
        class LambdaFunction < Resource


          property :code, 'Code'
          property :description, 'Description'
          property :handler, 'Handler'
          property :memory_size, 'MemorySize'
          property :role, 'Role'
          property :runtime, 'Runtime'
          property :timeout, 'Timeout'
          property :arn, 'Arn'

          def initialize(*args)
            super
            type 'AWS_Lambda_Function'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def lambda_function(name, &block)
        r = Model::Template::Resource::LambdaFunction.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end