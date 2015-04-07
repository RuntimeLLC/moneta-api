module Moneta
  module Api
    module Responses
      # Ответ, который приходит на запрос FindAccountByIdRequest.
      # В ответе содержится информация по счету.
      #   / Account searching by account number response. Response contains Account information.

      class FindAccountByIdResponse
        include Moneta::Api::DataMapper

        initialize_from_hash true

        # @return [Moneta::Api::Responses::AccountInfo]
        property :account
      end
    end
  end
end
