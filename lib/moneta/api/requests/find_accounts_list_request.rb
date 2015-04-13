module Moneta
  module Api
    module Requests
      # Запрос на получение списка счетов по заданным условиям поиска.
      # Accounts searching by given filter.

      class FindAccountsListRequest
        include Moneta::Api::DataMapper

        # @return [Integer] Пользователь, которому принадлежат счета.
        #   Если это поле не задано, то используется текущий пользователь.
        #   Необязательное поле.
        #   / Structure element, where accounts belong to. If omitted authenticated user's structure is used. Optional.
        property :unit_id

        # @return [String] Название счета. Поиск происходит по прямому совпадению.
        #   Для задания маски можно указать спец-символы "*" или "?".
        #   Необязательное поле.
        #   / Alias of account. Wildcards "*" and "?" may be used. Optional.
        property :alias

        # @return [String] Валюта счета. Необязательное поле.
        #   / Currency of account. Optional.
        property :currency

        # @return [Boolean] Является ли счет делегированным. Необязательное поле.
        #   - поле не указано - выбрать все счета
        #   - false - выбрать только неделегированные счета
        #   - true - выбрать только делегированные счета
        #   / The boolean flag indicating if account is deligated. Optional.
        #   - select all accounts if omitted
        #   - false - select only non-delegated (owned) accounts
        #   - true - select only delegated accounts
        property :is_delegated_account
      end
    end
  end
end
