module Moneta
  module Api
    module DataMapper
      def self.included(base)
        base.extend ClassMethods

        base.class_eval do
          def fill(data)
            properties.each do |property, type|
              value = data[ property ]
              property_value = type.nil? ? value : build_complex_value(type, value)

              instance_variable_set("@#{ property }", property_value)
            end

            self
          end

          def to_hash
            properties.each_with_object({}) do |(property, type), hash|
              value = send(property)
              if value
                hash_value = type.nil? ? value : to_hash_complex_value(value)
                hash[ classify_with_lower(property.to_s) ] = hash_value
              end
            end
          end

          def classify_with_lower(str)
            str = classify(str)
            str[0] = str[0].downcase

            str
          end

          def classify(str)
            str.split('_').map(&:capitalize).join
          end

          private

          def build_complex_value(type, value)
            value.kind_of?(Array) ?
              value.map { |v| type.new.fill(v) } :
              type.new.fill(value)
          end

          def to_hash_complex_value(value)
            value.kind_of?(Array) ?
              value.map(&:to_hash) :
              value.to_hash
          end
        end
      end

      module ClassMethods
        def property(name, type=nil)
          attr_accessor(name)

          # Сохраняем свойста и перезаписываем instance метод
          current_properties = instance_variable_get('@properties') || {}
          properties = instance_variable_set('@properties', current_properties.merge(name => type))

          send(:define_method, :properties) { properties }
        end
      end
    end
  end
end
