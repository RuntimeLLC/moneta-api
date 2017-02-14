module Moneta
  module Api
    module Responses
      class KeyValueResponse
        include Moneta::Api::DataMapper
        include ResponsePropertyMapper

        property :attribute, read_only: true

        def fill(attributes)
          @attribute = KeyValueSerializer.deserialize(attributes.delete(:attribute))
          super
          self
        end
      end
    end
  end
end
