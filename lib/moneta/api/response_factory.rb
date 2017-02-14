module Moneta
  module Api
    class ResponseFactory
      class << self
        # @param [Savon::Response]
        # @return [Moneta::Api::Responses::*]
        def build(response)
          klass = response.keys.first
          data = response.values.first

          Object.const_get("Moneta::Api::Responses::#{ klass.to_s }").build(data)
        end
      end
    end
  end
end
