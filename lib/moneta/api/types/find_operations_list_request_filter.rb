module Moneta
  module Api
    module Types
      # Фильтр, по которому ищем операции.
      # Transactions filter.

      class FindOperationsListRequestFilter
        include Moneta::Api::DataMapper

        # @return [Integer] ID пользователя в системе МОНЕТА.РУ
        #   / Structure identificator in MONETA.RU
        property :unit_id

        # @return [Integer] Номер счета
        #   / Account number
        property :account_id

        # @return [DateTime] Дата начала периода
        #   / Period's start
        property :date_from

        # @return [DateTime] Дата конца периода
        #   / Period's end
        property :date_to

        # @return [Integer] Номер операции в системе МОНЕТА.РУ
        #   / Transaction ID in MONETA.RU
        property :operation_id

        # @return [Float] Сумма от... Ищутся все операции, которые проходили
        #   на большую или равную сумму. Если указано это поле, то обязательно надо
        #   заполнить Currency
        #   / Minimal transaction amount. If specified currencyCode filter parameter is required.
        property :amount_from

        # @return [Float] Сумма до... Ищутся все операции, которые проходили
        #   на меньшую или равную сумму. Если указано это поле, то обязательно надо
        #   заполнить Currency
        #   / Maximal transaction amount. If specified currencyCode filter parameter is required.
        property :amount_to

        # @return [String] Валюта, по которой проходили операции
        #   / Currency of transaction account.
        property :currency_code

        # @return [Integer] Корреспонденский номер счета в системе МОНЕТА.РУ
        #   / Correspondent account number in MONETA.RU
        property :target_account_id

        # @return [String] Статус операции
        #   / Transaction status
        property :operation_status

        # @return [String] Внешний номер операции
        #   / External transaction ID
        property :client_transaction

        # @return [Integer]
        #   1 - все операции;
        #   2 - операции, где деньги были получены (сумма > 0);
        #   3 - операции, где деньги были потрачены (сумма < 0).
        #   1 - all transactions;
        #   2 - credit transactions;
        #   3 - debit transactions.
        property :operation_amount_type_id

        # @return [String] Название свойства операции. Может принимать следующие значения:
        #   YANDEXACCOUNT - счет в системе Яндекс.Деньги;
        #   WEBMONEYWMID - WebMoney WMID;
        #   WEBMONEYPURSE - WebMoney кошелек;
        #   CONTACTTRANSFERORDERNUMBER - Номер перевода в системе Contact;
        #   WIRETRANSFERORDERNUMBER - Номер платежного поручения в банковском переводе;
        #   Значение свойства указывается в поле propertyValue.
        #   The transaction property name may take following values:
        #   YANDEXACCOUNT - user's account number in Yandex.Money;
        #   WEBMONEYWMID - user's WMID in WebMoney;
        #   WEBMONEYPURSE - user's purse number in WebMoney;
        #   CONTACTTRANSFERORDERNUMBER - transfer idenitification number in Contact;
        #   WIRETRANSFERORDERNUMBER - bank transfer identification number.
        #   The value of property has to be specified in "propertyValue" element.
        property :property_name

        # @return [String] Значение свойства операции.
        #   Поиск происходит по прямому совпадению. Для задания маски
        #   можно указать спец-символы - "*" или "?".
        #   / Transaction property value. Wildcards "*" and "?" may be used.
        property :property_value

        # @return [Integer]
        #   1 - Ввод средств;
        #   2 - Вывод средств;
        #   3 - Внутренний перевод;
        #   4 - Товары и услуги.
        #   1 - Deposit;
        #   2 - Withdrawal;
        #   3 - Transfer;
        #   4 - Goods and services.
        property :operation_category_id
      end
    end
  end
end
