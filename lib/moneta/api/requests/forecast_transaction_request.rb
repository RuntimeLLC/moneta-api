module Moneta
  module Api
    module Requests
      # Запрос предварительного расчета сумм и комиссий по параметрам операции.
      # Request for amount and fee preliminary calculation by transaction parameters.
      class Moneta::Api::Requests::ForecastTransactionRequest < Types::TransactionRequestType; end
    end
  end
end
