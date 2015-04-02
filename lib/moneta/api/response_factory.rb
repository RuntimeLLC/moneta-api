module Moneta
  module Api
    class ResponseFactory
      extend Moneta::Api::Support

      class << self
        def build(response)
          class_name, params = response.to_hash.to_a.first
          # TODO: raise exception if const not found
          klass = Object.const_get(camelize(class_name.to_s))

          klass.new(params)
        end

        def camelize(class_name)
          "Moneta::Api::Responses::#{ capitalize(class_name) }"
        end
      end
    end
  end
end