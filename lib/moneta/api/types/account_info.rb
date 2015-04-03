module Moneta
  module Api
    module Types
      class AccountInfo
        include Moneta::Api::DataMapper

        # @return [String] Номер счета в системе МОНЕТА.РУ
        #   / Account number
        property :id

        # @return [String] Валюта данного счета
        #   / Currency of account
        property :currency

        # @return [Float] Баланс на данном счете
        #   / Current balance of account
        property :balance

        # @return [Float] Доступный баланс на данном счете
        #   / Available balance of account
        property :availableBalance

        # @return [Integer] Тип счета в системе МОНЕТА.РУ
        #   / Type of account
        property :type

        # @return [String] Название счета в системе МОНЕТА.РУ. Необязательное поле
        #   / Alias of account. Optional.
        property :alias

        # @return [String] URL после списания средств. Необязательное поле.
        #   / URL on debiting. Optional.
        property :onSuccessfulDebitUrl

        # @return [String] URL после зачисления средств. Необязательное поле.
        #   / URL on crediting. Optional.
        property :onSuccessfulCreditUrl

        # @return [String] Код проверки целостности данных. Необязательное поле.
        #   / Payment form data integrity signature. Optional.
        property :signature

        # @return [Float] Если баланс счета меньше данного значения, то раз в сутки уходит уведомление об этом событии. Необязательное поле.
        #   / Daily notifications if balance is less than threshold. Optional.
        property :lowBalanceThreshold

        # @return [Float] Если баланс счета больше данного значения, то раз в сутки уходит уведомление об этом событии. Необязательное поле.
        #   / Daily notifications if balance is greater than threshold. Optional.
        property :highBalanceThreshold

        # @return [AccountAccessInfo] Информация о доступе к счету. Информация отдается, если счет является делегированным. Необязательное поле.
        #   / Account access information. Available if the account is delegated, otherwise omitted. Optional.
        property :accountAccess

        # @return [Integer] Счет-прототип с которого берутся свойства "по умолчанию". Необязательное поле.
        #   / Prototype account for default properties values. Optional.
        property :prototypeAccountId

        # @return [String] URL после отмены списания средств. Необязательное поле.
        #   / URL on cancelled debit. Optional.
        property :onCancelledDebitUrl

        # @return [String] URL после отмены зачисления средств. Необязательное поле.
        #   / URL on cancelled credit. Optional.
        property :onCancelledCreditUrl

        # @param [Hash]
        def initialize(response)
          load_from(response)
        end
      end
    end
  end
end
