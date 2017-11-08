[![Gem Version](https://badge.fury.io/rb/moneta-api.svg)](http://badge.fury.io/rb/moneta-api)
[![Build Status](https://travis-ci.org/RuntimeLLC/moneta-api.svg?branch=master)](https://travis-ci.org/RuntimeLLC/moneta-api)
[![Code Climate](https://codeclimate.com/github/ssnikolay/moneta-api/badges/gpa.svg)](https://codeclimate.com/github/ssnikolay/moneta-api)
[![Test Coverage](https://codeclimate.com/github/ssnikolay/moneta-api/badges/coverage.svg)](https://codeclimate.com/github/ssnikolay/moneta-api)
[![Inline docs](http://inch-ci.org/github/ssnikolay/moneta-api.svg?branch=master)](http://inch-ci.org/github/ssnikolay/moneta-api)

[Описание MerchantAPI](https://www.moneta.ru/doc/MONETA.MerchantAPI.v2.ru.pdf) | [RDoc](http://www.rubydoc.info/gems/moneta-api) |
[Список методов](http://www.rubydoc.info/gems/moneta-api/Moneta/Api/ServiceMethods)

# moneta-api

МОНЕТА.РУ (MONETA.MerchantAPI.v2).

## Различия между v1 и v2

В целом, версии совместимы друг с другом. Главные отличия:

- v1 работает с Moneta.ru при помощи SOAP, v2 при помощи JSON.
- В v1 числа являются строками, в v2 числами (например, значения `id`).
- Изменились настройки фильтрации, добавилась настройка `log_body`, убрались `log`, `pretty_print_xml`
- В аттрибутах ключ-значение (например, результат `FindBankAccounts`), значение всегда строка. 
  Поэтому например значение поля `is_international` будет строка `"false"`, а не Boolean `false`. 
  Это связано с особенностями работы с Moneta.ru при помощи JSON.

## Установка

Добавьте эти строки в Gemfile вашего приложения:

```ruby
gem 'moneta-api'
```

И выполните:

    $ bundle

Или установите напрямую:

    $ gem install moneta-api

## Использование
Есть несколько вариантов работы с сервисами монеты:
1. API - работа происходит с использованием методов описанных в MONETA.MerchantAPI.v2
2. FRONT - работа происходит напрямую с интерфейсом монеты.

### Примеры работы c API

#### Получить данные счета

```ruby
  require 'moneta/api'

  # получить данные счета
  service = Moneta::Api::Service.new('username', 'password', { demo_mode: true })

  response = service.find_account_by_id(10999)

  puts response.class.name
  # => 'Moneta::Api::Responses::FindAccountByIdResponse'
  puts "Баланс: #{ response.account.balance} #{ response.account.currency }"
  # => 'Баланс: 100 RUB'
```

#### Перевод на другой счет в Монета.ру

```ruby
  transfer_request = Moneta::Api::Requests::TransferRequest.new.tap do |request|
    request.payee = 28988504
    request.payer = 10999
    request.amount = 10
    request.is_payer_amount = false
    request.payment_password = '123456'
  end

  response = service.transfer(transfer_request)

  # проверить данные счета
  response = service.find_account_by_id(10999)
  puts "Баланс после пополнения: #{ response.account.balance} #{ response.account.currency }"
  # => 'Баланс после пополнения: 110 RUB'
```

#### Вывод денег со счета в QIWI

```ruby
  withdrawal_request = Moneta::Api::Requests::PaymentRequest.build(
    payer: 28988504,
    payee: Moneta::Constants::Withdrawal::QIWI,
    amount: 10,
    client_transaction: SecureRandom.uuid,
    payment_password: '123456',
    is_payer_amount: true
  )

  withdraw_to = Moneta::Api::Types::KeyValueAttribute.build(key: 'EXTERNALACCOUNTID', value: qiwi_account)

  withdrawal_info = Moneta::Api::Types::OperationInfo.new
  withdrawal_info.add_attribute(withdraw_to)

  withdrawal_request.operation_info = withdrawal_info

  service.payment(withdrawal_request)
```

**Полный [список методов](http://www.rubydoc.info/gems/moneta-api/Moneta/Api/ServiceMethods), с помощью которых вы можете обратиться к MONETA.MerchantAPI.v2**

### Настройки

#### Logger

```ruby
  Moneta::Api::Service.new('username', 'password', {
    logger: Rails.logger,
    log_body: true,
    filter: [
      [/("availableBalance":)([\d\.]{0,})/,'\1[FILTERED]'], # фильтр доступного баланса кошелька
      [/("balance":)([\d\.]{0,})/,'\1[FILTERED]'],          # фильтр баланса кошелька
      [/("protectionCode":)("\d+")/,'\1[FILTERED]']         # фильтр кода протекции
      # ...
    ]
  })
```

Доступны следующие настройки:

 Название                  | Описание
---------------------------|:-----------------------------------------------------------
`:demo_mode`               | Выполнение операций на демо стенде.
`:logger`                  | По умолчанию логирование не используется. Можно указать конкретный логгер, например `Rails.logger`.
`:log_body`                | Логировать ли тело запроса, по умолчанию выключено.
`:open_timeout`            | Таймаут подключения.
`:filter`                  | Настройка фильтрации содержимого лога. Пароль пользователя фильтруется всегда.

#### Demo режим
Для использования тестового сервера (http://demo.moneta.ru) следует инициализировать сервис со специальным флагом

```ruby
  Moneta::Api::Service.new('username', 'password', { demo_mode: true })
```


### Примеры работы с FRONT (интерфейс монеты)

#### Получить квинтанцию оплаты в формате PDF
```ruby
  require 'moneta/api'

  certificate = OpenSSL::X509::Certificate.new(File.read('cert_path'))
  private_key = OpenSSL::PKey::RSA.new(File.read('key_path'), 'password')

  service = Moneta::Front::Service.new(certificate, private_key, { demo_mode: true })

  service.get_receipt_pdf(468398)
  # => 'PDF файл'
```

**Полный [список методов](http://www.rubydoc.info/gems/moneta-api/Moneta/Front/ServiceMethods), с помощью которых вы можете обратиться к интефейсу moneta.ru**

### Настройки
**Для работы с интерфейсом монеты понадобиться получение сертификатов, получение подробно описано в [MONETA.MerchantAPI.v2](https://www.moneta.ru/doc/MONETA.MerchantAPI.v2.ru.pdf)**

Параметры:

 Название                  | Описание
---------------------------|:----------------------------------------------
`certificate`              | Сертификат пользователя полученный от монеты.
`private_key`              | Приватный ключ сгенерированный пользователем.
`:demo_mode`               | Выполнение операций на демо стенде.
`:open_timeout`            | Таймаут подключения.
`:filter`                  | Настройка фильтрации содержимого лога.

#### Demo режим
Для использования тестового сервера (http://demo.moneta.ru) следует инициализировать сервис со специальным флагом

```ruby
  Moneta::Front::Service.new(certificate, private_key, { demo_mode: true })
```

## Contributing

1. Стандартная схема с pull-request workflow
2. Для локального запуска тестов необходимо создать конфигурационный файл со своими demo доступами
```bash
  cp spec/support/moneta.example.yml spec/support/moneta.yml
```
