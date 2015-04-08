module Moneta
  module Api
    class ResponseFactory
      class << self
        # @param [Savon::Response]
        # @return [Moneta::Api::Responses::*]
        def build(response)
          klass, data = response.to_hash.to_a.first
          klass = classify(klass)

          Object.const_get("Moneta::Api::Responses::#{ klass }").new.tap do |response|
            response.fill(data)
          end
        end

        private

        def classify(str)
          str.to_s.split('_').map(&:capitalize).join
        end
      end
    end
  end
end
