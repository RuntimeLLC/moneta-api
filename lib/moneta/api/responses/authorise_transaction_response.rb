module Moneta
  module Api
    module Responses
      # Ответ на запрос регистрации операции.
      # Transaction authorisation response.

      class AuthoriseTransactionResponse < Types::OperationInfo
        include ResponsePropertyMapper
      end
    end
  end
end
