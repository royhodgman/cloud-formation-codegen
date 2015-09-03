require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # CloudFront_DefaultCacheBehavior
        ##
        class DefaultCacheBehavior < Resource


          property :forwarded_values, 'ForwardedValues'
          property :min_ttl, 'MinTTL'
          property :smooth_streaming, 'SmoothStreaming'
          property :target_origin_id, 'TargetOriginId'
          property :viewer_protocol_policy, 'ViewerProtocolPolicy'

          def initialize(*args)
            super
            type 'CloudFront_DefaultCacheBehavior'

            @variables['AllowedMethods'] = []
            @variables['CachedMethods'] = []
            @variables['TrustedSigners'] = []
          end

          def allowed_methods(value)
            @variables['AllowedMethods'] << value
          end
          
          def cached_methods(value)
            @variables['CachedMethods'] << value
          end
          
          def trusted_signers(value)
            @variables['TrustedSigners'] << value
          end
          
        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def defaultcachebehavior(name, &block)
        r = Model::Template::Resource::DefaultCacheBehavior.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end