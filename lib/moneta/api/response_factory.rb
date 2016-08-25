module Moneta
  module Api
    class ResponseFactory
      class << self
        # @param [Savon::Response]
        # @return [Moneta::Api::Responses::*]
        def build(response)
          klass, data = response.to_hash.to_a.first

          Object.const_get("Moneta::Api::Responses::#{ klass.to_s.camelize }").build(data)
        end
      end
    end
  end
end
