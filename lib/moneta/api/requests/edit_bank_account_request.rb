module Moneta
  module Api
    module Requests

      # Запрос на изменение банковских реквизитов.
      # Request for editing information about your bank account in your MONETA.RU profile.
      class EditBankAccountRequest
        include Moneta::Api::DataMapper

        # @return [Integer] ID банковских реквизитов.
        #   / Bank account ID.
        property :id

        # @return [Moneta::Api::Types::BankAccountType] Расширенные атрибуты.
        #   / Specifies extended attributes.
        property :attribute, type: Moneta::Api::Types::BankAccountType
      end
    end
  end
end
