module Moneta
  module Api
    module Responses
      # Ответ, который приходит на запрос FindAccountByIdRequest.
      # В ответе содержится информация по счету.
      # Account searching by account number response. Response contains Account information.

      class FindAccountByIdResponse
        include Moneta::Api::DataMapper

        # @return [Moneta::Api::Types::AccountInfo]
        property :account, type: Moneta::Api::Types::AccountInfo
      end
    end
  end
end
