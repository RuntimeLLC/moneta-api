module Moneta
  module Api
    module Types
      class HashEntity
        include Moneta::Api::DataMapper

        def to_hash
          { 'attribute' => attributes } if attributes.any?
        end

        private

        def attributes
          @_attributes ||= begin
            properties.collect do |property, _|
              value = send(property)
              key = property.to_s.swapcase

              KeyValueAttribute.build(key: key, value: value).to_hash unless value.nil?
            end.compact
          end
        end
      end
    end
  end
end
