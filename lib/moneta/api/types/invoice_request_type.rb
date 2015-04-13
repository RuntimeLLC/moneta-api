module Moneta
  module Api
    module Types
      # Тип, описывающий параметры операции для выставления счета к оплате.
      # Transaction parameters type for making new invoice (request for payment).

      class InvoiceRequestType
        include Moneta::Api::DataMapper

        # @return [Integer] Номер счета плательщика
        #   / Payer account number
        property :payer

        # @return [Integer] Номер счета получателя
        #   / Payee account number
        property :payee

        # @return [Float] Сумма
        #   / Amount
        property :amount

        # @return [String] Внешний номер операции
        #   / external transaction identificator
        property :client_transaction

        # @return [String] Описание операции
        #   / Transaction description or comments
        property :description

        # @return [String] Произвольный параметр
        #   / Custom parameter
        property :mnt_custom1

        # @return [String] Произвольный параметр
        #   / Custom parameter
        property :mnt_custom2

        # @return [String] Произвольный параметр
        #   / Custom parameter
        property :mnt_custom3

        # @return [Moneta::Api::Types::OperationInfo] Набор полей, которые необходимо сохранить в качестве атрибутов
        #   операции. Значения дат в формате dd.MM.yyyy HH:mm:ss
        #   / Key-value pairs that will be saved as a transaction attributes. Use format dd.MM.yyyy HH:mm:ss for date values
        property :operation_info
      end
    end
  end
end
