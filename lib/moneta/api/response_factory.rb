module Moneta
  module Api
    class ResponseFactory
      class << self
        def build(response)
          class_name, params = response.to_hash.to_a.first
          klass = Object.const_get(camelize(class_name.to_s))

          klass.new(params)
        end

        def camelize(str)
          class_name = str.split('_').map {|w| w.capitalize}.join
          "Moneta::Api::Response::#{ class_name }"
        end
      end
    end
  end
end