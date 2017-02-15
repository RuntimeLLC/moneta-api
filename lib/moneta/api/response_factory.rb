module Moneta
  module Api
    class ResponseFactory
      class << self
        # @param [Savon::Response]
        # @return [Moneta::Api::Responses::*]
        def build(response)
          klass = response.keys.first
          data = response.values.first

          prepare_data!(data)
          Object.const_get("Moneta::Api::Responses::#{ klass.to_s }").build(data)
        end

        private

        def prepare_data!(data)
          if data.is_a?(Hash)
            data.deep_transform_keys! do |key|
              key.underscore.to_sym rescue key
            end
          end
        end
      end
    end
  end
end
