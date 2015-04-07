module Moneta
  module Api
    module Types
      # Тип, описывающий доступ к счету.
      #   / Account access description type.

      class AccountAccessInfo
        include Moneta::Api::DataMapper

        initialize_from_hash true

        # @return [Boolean] Доступ на изменение свойств счета
        # / Account attributes modification access
        property :access_to_write

        # @return [Boolean] Доступ на снятие средств со счета
        # / Account debiting access
        property :access_to_taken_out

        # @return [Boolean] Доступ на зачисление средств на счет
        # / Account crediting access
        property :access_to_taken_in
      end
    end
  end
end