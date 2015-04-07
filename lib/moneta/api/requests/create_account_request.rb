module Moneta
  module Api
    module Requests
      class CreateAccountRequest
        include Moneta::Api::DataMapper

        # @return [String] Валюта счета .
        # / Currency of account .
        property :currency

        # @return [String] Название счета.
        # Название счета должно быть уникальным среди счетов одного пользователя.
        # Необязательное поле.
        # / Alias of account. Must be unique among accounts of given user. Optional.
        property :alias

        # @return [String] Платежный пароль.
        # / Payment password.
        property :payment_password

        # @return [Integer] Пользователь.
        # Если это поле не задано.
        # Необязательное поле.
        # / Structure element. If omitted authenticated user. Optional.
        property :unit_id

        # @return [String] URL после списания средств. Необязательное поле.
        # / URL . URL on debiting
        property :on_successful_debit_url

        # @return [String] URL после зачисления средств. Необязательное поле.
        # / URL . URL on crediting
        property :on_successful_credit_url

        # @return [String] Код проверки целостности данных. Необязательное поле.
        # / Mandatory payment form signature
        property :signature

        # @return [Float] Если баланс счета меньше данного значения
        # / Daily notifications if balance is less than threshold
        property :low_balance_threshold

        # @return [Float] Если баланс счета больше данного значения
        # / Daily notifications if balance is greater than threshold
        property :high_balance_threshold

        # @return [Integer] Счет
        # / Prototype account for default properties values
        property :prototype_account_id

        # @return [String] URL после отмены списания средств. Необязательное поле.
        # / URL . URL on cancelled debit
        property :on_cancelled_debit_url

        # @return [String] URL после отмены зачисления средств. Необязательное поле.
        # / URL . URL on cancelled credit
        property :on_cancelled_credit_url
      end
    end
  end
end
