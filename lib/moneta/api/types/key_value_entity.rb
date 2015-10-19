module Moneta
  module Api
    module Types
      class KeyValueEntity
        include Moneta::Api::DataMapper

        def to_hash
          Moneta::Api::KeyValueSerializer.serialize(self)
        end
      end
    end
  end
end
