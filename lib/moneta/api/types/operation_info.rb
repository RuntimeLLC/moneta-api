module Moneta
  module Api
    module Types
      # Тип, описывающий операцию в системе МОНЕТА.РУ.
      # Он представляет собой номер (id) операции и набор полей,
      # которые присутствуют у данной операции. Поля представлены в виде "ключ-значение".
      # Transaction type contains transaction id and key-value pairs representing transaction attributes.

      class OperationInfo
        include Moneta::Api::DataMapper

        # @return [Integer] Номер операции
        #   / Transaction ID
        property :id

        # @return [Array[KeyValueAttribute]] Поля операции. Полей в операции может быть 0 и более.
        # Список полей:
        #   * clienttransaction - внешний (не в системе МОНЕТА.РУ) номер операции;
        #   * statusid - статус операции;
        #   * typeid - тип операции:
        #   * 2,10 - оплата с пользовательского счета,
        #   * 3 - оплата с внешней платежной системы,
        #   * 7,14 - пополнение счета,
        #   * 4,13 - вывод на внешнюю платежную систему,
        #   * 11 - вывод на пользовательский счет,
        #   * 12 - внутренний перевод;
        #   * category - категория операции:
        #     * DEPOSIT - ввод средств,
        #     * WITHDRAWAL - вывод средств,
        #     * TRANSFER - внутренний перевод,
        #     * BUSINESS - товары и услуги;
        #   * modified - время последнего изменения операции;
        #   * sourceaccountid - номер счета, с которого произведена операция;
        #   * sourcecurrencycode - валюта счета;
        #   * sourceamount - сумма по операции;
        #   * sourceamountfee - сумма комиссии;
        #   * sourceamounttotal - общая сумма с учетом комиссии;
        #   * targetaccountid - корреспондентский счет;
        #   * targetalias - название корреспондентского счета;
        #   * isreversed - если "true", то sourceaccountid=получатель, targetaccountid=плательщик;
        #   * customfield:* - произвольный набор значений.
        #       В операции их может быть несколько.
        #       Полный ключ атрибута состоит из префикса ("customfield:") и тэга (32 символа).
        #       Например, "customfield:name".
        #
        # Transaction attributes. Attributes set may be empty.
        # Attributes list:
        #   * clienttransaction - external transaction ID;
        #   * statusid - transaction status;
        #   * typeid - transaction type:
        #   * 2,10 - payment from user account,
        #   * 3 - payment from external system,
        #   * 7,14 - deposit,
        #   * 4,13 - withdrawal to external system,
        #   * 11 - withdrawal to user account,
        #   * category - transaction category:
        #     * DEPOSIT,
        #     * WITHDRAWAL,
        #     * TRANSFER,
        #     * BUSINESS;
        #   * modified - transaction modification timestamp;
        #   * sourceaccountid - account number;
        #   * sourcecurrencycode - account currency;
        #   * sourceamount - transaction amount;
        #   * sourceamountfee - transaction commission;
        #   * sourceamounttotal - total transaction amount incl. commission;
        #   * targetaccountid - correspondent account number;
        #   * targetalias - alias of correspondent account;
        #   * isreversed - if "true", then sourceaccountid=payee, targetaccountid=payer;
        #   * customfield:* - custom list of values.
        #     The transaction may contain several attributes with different keys.
        #     The full attribute's key consists of prefix ("customfield:") and tag (32 characters).
        #     For example, "customfield:name".
        property :attribute, type: Moneta::Api::Types::KeyValueAttribute

        # @param [Moneta::Api::Types::KeyValueAttribute]
        # @return item
        def add_attribute(item)
          if item.kind_of? Moneta::Api::Types::KeyValueAttribute
            (@attribute ||=[]).push(item)
          else
            raise TypeError.new("TypeError: can't convert #{ item.class } into Moneta::Api::Types::KeyValueAttribute")
          end
        end

        def get_attribute(attribute_name)
          Array(@attribute).detect { |attribute| attribute.key.to_s == attribute_name.to_s }
        end
      end
    end
  end
end
