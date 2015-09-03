require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # Amazon_Route_53_Record_Set_GeoLocation_Property
        ##
        class Route53RecordSetGeoLocationProperty < Resource


          property :continent_code, 'ContinentCode'
          property :country_code, 'CountryCode'
          property :subdivision_code, 'SubdivisionCode'

          def initialize(*args)
            super
            type 'Amazon_Route_53_Record_Set_GeoLocation_Property'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def route_53_record_set_geolocation_property(name, &block)
        r = Model::Template::Resource::Route53RecordSetGeoLocationProperty.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end