module Moneta
  module Api
    module Requests
      class CreateAccountRequest < Struct.new(:currency, :payment_password)
        include Moneta::Api::Requests::Helpers
      end
    end
  end
end