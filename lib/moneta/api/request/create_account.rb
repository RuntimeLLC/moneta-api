module Moneta
  module Api
    module Request
      class CreateAccount < Struct.new(:currency, :payment_password)
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