module Moneta
  module Api
    module Requests
      class CreateAccountRequest
        include Moneta::Api::DataMapper

        property :currency
        property :payment_password
      end
    end
  end
end
