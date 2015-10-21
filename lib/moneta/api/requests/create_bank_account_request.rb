module Moneta
  module Api
    module Requests

      # Запрос на создание банковских реквизитов.
      # Request for adding information about your bank account to your MONETA.RU profile.
      class CreateBankAccountRequest
        include Moneta::Api::DataMapper

        # @return [Integer] ID банковских реквизитов.
        #   / Bank account ID.
        property :id

        property :profile_id

        # @return [Moneta::Api::Types::BankAccountType] Расширенные атрибуты.
        #   / Specifies extended attributes.
        property :attribute, type: Moneta::Api::Types::BankAccountType

        # @return [Integer] Пользователь, которому будут принадлежать банковские реквизиты.
        #   / Если это поле не задано, то банковские реквизиты создаются для текущего пользователя.
        #   / The unique identifier of the user who will own the bank account.
        #   / If you omit this element, MONETA.RU uses the ID of the user who sends the request.
        property :unit_id
      end
    end
  end
end
