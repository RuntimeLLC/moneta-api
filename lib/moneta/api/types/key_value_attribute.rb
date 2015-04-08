module Moneta
  module Api
    module Types
      # Тип, который позволяет работать с сущностями типа "ключ-значение".
      #   / Key-value pairs type.

      class KeyValueAttribute
        include Moneta::Api::DataMapper

        # @return [String]
        property :key

        # @return [String]
        property :value
      end
    end
  end
end
