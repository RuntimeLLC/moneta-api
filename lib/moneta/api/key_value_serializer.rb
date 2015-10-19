module Moneta
  module Api
    class KeyValueSerializer
      class << self
        def serialize(entity)
          attributes = entity.properties

          attributes.collect do |property, _|
            value = entity.public_send(property)
            key = property.to_s.swapcase

            { 'key' => key, 'value' => value } unless value.nil?
          end.compact
        end

        def deserialize(attributes)
          attributes.each_with_object({}) do |attribute, hash|
            hash[attribute[:key].to_sym] = attribute.tap { |a| a.delete(:key) }
          end
        end
      end
    end
  end
end
