module Moneta
  module Api
    module Types
      # Тип, описывающий суммы и комиссии в предварительном расчете операции.
      # Type describes amount and fees for preliminary calculation of transaction.

      class ForecastTransactionResponseType
        include Moneta::Api::DataMapper

        # @return [Integer] Номер счета плательщика
        #   / Payer account number
        property :payer

        # @return [String] Валюта счета плательщика
        #   / Currency of payer account
        property :payer_currency

        # @return [Float] Сумма к списанию
        #   / Debit amount
        property :payer_amount

        # @return [Float] Комиссия списания средств
        #   / Debit fee
        property :payer_fee

        # @return [Integer] Номер счета получателя
        #   / Payee account number
        property :payee

        # @return [String] Валюта счета получателя
        #   / Currency of payee account
        property :payee_currency

        # @return [Float] Сумма к зачислению
        #   / Credit amount
        property :payee_amount

        # @return [Float] Комиссия зачисления средств
        #   / Credit fee
        property :payee_fee

        # @return [String] Название счета плательщика
        #   / Payer account alias
        property :payer_alias

        # @return [String] Название счета получателя
        #   / Payee account alias
        property :payee_alias
      end
    end
  end
end