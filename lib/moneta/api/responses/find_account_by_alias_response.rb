module Moneta
  module Api
    module Responses
      # Ответ, который приходит на запрос FindAccountByAliasRequest.
      # В ответе содержится информация по счету.
      # Account searching by account alias response. Response contains Account information.

      class FindAccountByAliasResponse
        include Moneta::Api::DataMapper

        # @return [Moneta::Api::Types::AccountInfo]
        property :account, Moneta::Api::Types::AccountInfo
      end
    end
  end
end
