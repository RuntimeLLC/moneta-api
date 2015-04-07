module Moneta
  module Api
    module Types
      # Базовый тип, содержащий атрибут "version".
      #   / Base type containing "version" attribute.

      class Entity
        include Moneta::Api::DataMapper

        # @return [String]
        property :version
      end
    end
  end
end
