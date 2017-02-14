module Moneta
  module Api
    module Responses
      class CreateAccountResponse
        include Moneta::Api::DataMapper
        include ResponsePropertyMapper

        # @return [String] Номер счета в системе МОНЕТА.РУ
        #   Account number
        property :account_id

        def fill(response)
          @account_id = response

          self
        end
      end
    end
  end
end
