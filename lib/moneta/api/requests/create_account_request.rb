module Moneta
  module Api
    module Requests
      class CreateAccountRequest
        include Moneta::Api::DataMapper
        # @return [String] Валюта счета
        #   / Currency of account
        property :currency

        # @return [String] Название счета.
        #   Название счета должно быть уникальным среди счетов одного пользователя.
        #   Необязательное поле.
        #   / Alias of account. Must be unique among accounts of given user. Optional.
        property :alias

        # @return [String] Платежный пароль. Минимальная длина - 5 символов
        #   / Payment password. Minimum length is 5 symbols.
        property :payment_password

        # @return [Integer] Пользователь, которому будет принадлежать данный счет.
        #   Если это поле не задано, то счет создается для текущего пользователя.
        #   Необязательное поле.
        #   / Structure element, where the account belongs to. If omitted authenticated user's structure is used. Optional.
        property :unit_id

        # @return [String] URL после списания средств. Необязательное поле.
        #   / URL on debiting. Optional.
        property :on_successful_debit_url

        # @return [String] URL после зачисления средств. Необязательное поле.
        #   / URL on crediting. Optional.
        property :on_successful_credit_url

        # @return [String] Код проверки целостности данных. Необязательное поле.
        #   / Mandatory payment form signature. Optional.
        property :signature

        # @return [Float] Если баланс счета меньше данного значения, то раз в сутки уходит уведомление об этом событии. Необязательное поле.
        #   / Daily notifications if balance is less than threshold. Optional.
        property :low_balance_threshold

        # @return [Float] Если баланс счета больше данного значения, то раз в сутки уходит уведомление об этом событии. Необязательное поле.
        #   / Daily notifications if balance is greater than threshold. Optional.
        property :high_balance_threshold

        # @return [Integer] Счет-прототип с которого берутся свойства "по умолчанию". Необязательное поле.
        #   / Prototype account for default properties values. Optional.
        property :prototype_account_id

        # @return [String] URL после отмены списания средств. Необязательное поле.
        #   / URL on cancelled debit. Optional.
        property :on_cancelled_debit_url

        # @return [String] URL после отмены зачисления средств. Необязательное поле.
        #   / URL on cancelled credit. Optional.
        property :on_cancelled_credit_url
      end
    end
  end
end
