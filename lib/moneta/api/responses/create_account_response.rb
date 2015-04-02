module Moneta
  module Api
    module Responses
      class CreateAccountResponse
        include Moneta::Api::DataMapper

        # @return [String] Номер счета в системе МОНЕТА.РУ / Account number
        property :id

        def initialize(response)
          @id = response
        end
      end
    end
  end
end
