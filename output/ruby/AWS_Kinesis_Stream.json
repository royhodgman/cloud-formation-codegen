require_relative '../resource'

module Convection
  module Model
    class Template
      class Resource
        ##
        # AWS_Kinesis_Stream
        ##
        class KinesisStream < Resource


          property :shard_count, 'ShardCount'

          def initialize(*args)
            super
            type 'AWS_Kinesis_Stream'

          end

        end
      end
    end
  end

  module DSL
    ## Add DSL method to template namespace
    module Template
      def kinesis_stream(name, &block)
        r = Model::Template::Resource::KinesisStream.new(name, self)

        r.instance_exec(&block) if block
        resources[name] = r
      end
    end
  end
end