module Moneta
  module Api
    module Types
      class HashEntity
        include Moneta::Api::DataMapper

        def to_hash
          attributes = Moneta::Api::KeyValueSerializer.serialize(self)
          { 'attribute' => attributes } if attributes.any?
        end
      end
    end
  end
end
