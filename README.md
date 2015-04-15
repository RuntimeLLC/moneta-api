[![Gem Version](https://badge.fury.io/rb/moneta-api.svg)](http://badge.fury.io/rb/moneta-api)
[![Build Status](https://travis-ci.org/ssnikolay/moneta-api.svg?branch=master)](https://travis-ci.org/ssnikolay/moneta-api)
[![Code Climate](https://codeclimate.com/github/ssnikolay/moneta-api/badges/gpa.svg)](https://codeclimate.com/github/ssnikolay/moneta-api)
[![Test Coverage](https://codeclimate.com/github/ssnikolay/moneta-api/badges/coverage.svg)](https://codeclimate.com/github/ssnikolay/moneta-api)
[![Inline docs](http://inch-ci.org/github/ssnikolay/moneta-api.svg?branch=master)](http://inch-ci.org/github/ssnikolay/moneta-api)

[Описание MerchantAPI](https://www.moneta.ru/doc/MONETA.MerchantAPI.v2.ru.pdf) | [RDoc](http://www.rubydoc.info/gems/moneta-api) |
[Список методов](http://www.rubydoc.info/gems/moneta-api/Moneta/Api/ServiceMethods)

# moneta-api

МОНЕТА.РУ (MONETA.MerchantAPI.v2).

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

#### Базовый пример

```ruby
  require 'moneta/api'

  # получить данные счета
  service = Moneta::Api::Service.new('username', 'password', { demo_mode: true })
  response = service.find_account_by_id(10999)
  puts response.class.name
  # => 'Moneta::Api::Responses::FindAccountByIdResponse'
  puts "Баланс до пополнения: #{ response.account.balance} #{ response.account.currency }"
  # => 'Баланс до пополнения: 100 RUB'
  
  # перевод
  transfer_request = Moneta::Api::Requests::TransferRequest.new.tap do |request|
    request.payee = 28988504
    request.payer = 10999
    request.amount = 10
    request.is_payer_amount = false
    request.payment_password = '123456'
  end
  response = service.transfer(transfer_request)
  
  # данные транзакции
  puts response.class.name
  # => 'Moneta::Api::Responses::TransferResponse'
  puts response.status
  # => 'SUCCEED'
  
  # проверить данные счета
  response = service.find_account_by_id(10999)
  puts "Баланс после пополнения: #{ response.account.balance} #{ response.account.currency }"
  # => 'Баланс после пополнения: 110 RUB'
```

**Полный [список методов](http://www.rubydoc.info/gems/moneta-api/Moneta/Api/ServiceMethods) доступных для обращения к MONETA.MerchantAPI.v2.**

### Настройки

#### Logger

```ruby
  Moneta::Api::Service.new('username', 'password', {
    logger: Rails.logger,
    log_level: :info,
    filters: [:password]
  })
```

Доступны следующие настройки

 Название                  | Описание
---------------------------|:-----------------------------------------------------------
`:logger`                  | **moneta-api** по-умолчанию пишет логи в `$STDOUT` с помощью Ruby Logger'а. Можно переопределить на любой другой Logger. (прим: `Rails.logger`)
`:log_level`               | Используется для фильтрации вывода в лог по приоритету. Допускаются следующие значения - `:debug`, `:warn`, `:error`, `:fatal`.
`:log`                     | Определяет нужно ли писать в log. (`true` или `false`)
`filters`                  | Конфиденциальная информация, которую не следует писать в log.
`:pretty_print_xml`        | Вывод в log XML запроса\ответа. (`true` или `false`)

#### Demo режим
Для использования тестового сервера (http://demo.moneta.ru) следует инициализировать сервис со специальным флагом

```ruby
  Moneta::Api::Service.new('username', 'password', { demo_mode: true })
```


## Contributing

1. Fork it ( https://github.com/ssnikolay/moneta-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
