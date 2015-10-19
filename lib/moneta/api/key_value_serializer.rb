module Moneta
  module Api
    class KeyValueSerializer
      def self.serialize(entity)
        attributes = entity.properties

        attributes.collect do |property, _|
          value = entity.public_send(property)
          key = property.to_s.swapcase

          { 'key' => key, 'value' => value } unless value.nil?
        end.compact
      end
    end
  end
end
