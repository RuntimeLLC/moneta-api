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
        property :payment_password
      end
    end
  end
end
