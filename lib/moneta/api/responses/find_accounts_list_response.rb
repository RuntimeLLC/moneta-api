module Moneta
  module Api
    module Responses
      class FindAccountsListResponse
        # Ответ, который содержит список счетов.
        # Accounts searching response containing the list of accounts.

        include Moneta::Api::DataMapper

        # @return[Array[Moneta::Api::Types::AccountInfo]]
        property :account, type: Moneta::Api::Types::AccountInfo
      end
    end
  end
end
