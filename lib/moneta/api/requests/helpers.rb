module Moneta
  module Api
    module Requests
      module Helpers
        include Moneta::Api::Support

        def to_h
          super.each_with_object({}) do |(key, value), hash|
            hash[ capitalize_with_lower(key.to_s) ] = value
          end
        end
      end
    end
  end
end
