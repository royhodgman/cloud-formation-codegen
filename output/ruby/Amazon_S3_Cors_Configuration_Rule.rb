require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_S3_Cors_Configuration_Rule
        ##
        class S3CorsConfigurationRule < Resource


          property :id, 'Id'
          property :max_age, 'MaxAge'

          def initialize(*args)
            super
            type 'Amazon_S3_Cors_Configuration_Rule'

            @variables['AllowedHeaders'] = []
            @variables['AllowedMethods'] = []
            @variables['AllowedOrigins'] = []
            @variables['ExposedHeaders'] = []
          end

          def allowed_headers(value)
            @variables['AllowedHeaders'] << value
          end
          
          def allowed_methods(value)
            @variables['AllowedMethods'] << value
          end
          
          def allowed_origins(value)
            @variables['AllowedOrigins'] << value
          end
          
          def exposed_headers(value)
            @variables['ExposedHeaders'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def s3_cors_configuration_rule(name, &block)
        r = Model::Template::Resource::S3CorsConfigurationRule.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end