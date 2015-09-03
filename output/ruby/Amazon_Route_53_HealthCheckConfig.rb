require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_Route_53_HealthCheckConfig
        ##
        class Route53HealthCheckConfig < Resource


          property :failure_threshold, 'FailureThreshold'
          property :fully_qualified_domain_name, 'FullyQualifiedDomainName'
          property :ip_address, 'IPAddress'
          property :port, 'Port'
          property :request_interval, 'RequestInterval'
          property :resource_path, 'ResourcePath'
          property :search_string, 'SearchString'
          property :type, 'Type'

          def initialize(*args)
            super
            type 'Amazon_Route_53_HealthCheckConfig'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def route_53_healthcheckconfig(name, &block)
        r = Model::Template::Resource::Route53HealthCheckConfig.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end