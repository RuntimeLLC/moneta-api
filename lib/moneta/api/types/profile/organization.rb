module Moneta
  module Api
    module Types
      module Profile
        class Organization < HashEntity 
          # @return [String]  ID пользователя в системе МОНЕТА.РУ.
          property :unitid

          # @return [String]  Тип партнера [резидент/нерезидент], если нет значения - партнер старого формата, записывается при регистрации партнера.
          property :rf_resident

          # @return [String]  Цель установления и предполагаемый характер деловых отношений с НКО.
          property :goal_and_business_relationships

          # @return [String]  Планируемые ежемесячные обороты.
          property :planned_turnovers

          # @return [String]  Планируемые плательщики.
          property :planned_payers

          # @return [String]  Тарифный план [PAY_MYSELF, PAY_TOGETHER, ZKH, NOT_RF_RESIDENT], задается при регистрации партнера.
          property :tariff

          # @return [String]  Организационно-правовая форма [организация или ИП], задается при регистрации партнера-нерезидента.
          property :incorporation_form_ru

          # @return [String]  Тип юридического лица (для организации).
          property :legal_person_ru

          # @return [String]  Подробности по типу юридического лица (для организации).
          property :legal_person_details_ru

          # @return [String]  Название на иностранном языке.
          property :international_name

          # @return [String]  Псевдоним.
          property :alias

          # @return [String]  Полное название организации или ФИО индивидуального предпринимателя, задается при регистрации партнера.
          property :organization_name

          # @return [String]  Сокращенное название организации, задается при регистрации партнера.
          property :organization_name_short

          # @return [String]  Должность руководителя (для организации).
          property :position_director

          # @return [String]  Детали для должности директора (для организации).
          property :position_director_details

          # @return [String]  Документ, на основании которого действует директор (для организации).
          property :acting_document

          # @return [String]  Подробности по документу, на основании которого действует директор (для организации).
          property :position_director_details

          # @return [String]  Номер (доверенность, для организации).
          property :attorney_number_ru

          # @return [String]  Дата от (доверенность, для организации).
          property :attorney_date_from_ru

          # @return [String]  Дата срок действия до (доверенность, для организации).
          property :attorney_date_to_ru

          # @return [String]  ФИО для подписи в договоре (для организации).
          property :agreement_signer_fio

          # @return [String]  Дата (свидетельство о регистрации).
          property :registration_date_ru

          # @return [String]  Серия (свидетельство о регистрации).
          property :registration_series_ru

          # @return [String]  Номер (свидетельство о регистрации).
          property :registration_number_ru

          # @return [String]  Наименование регистрирующего органа (свидетельство о регистрации).
          property :registration_authority_ru

          # @return [String]  Место государственной регистрации (свидетельство о регистрации).
          property :registration_state_place_ru

          # @return [String]  ФИО для подписи в договоре (для ИП).
          property :agreement_signer_fio_ie

          # @return [String]  ФИО контакта по финансовым вопросам.
          property :fio_accountant

          # @return [String]  Должность контакта по финансовым вопросам.
          property :position_accountant

          # @return [String]  ФИО контакта по техническим вопросам.
          property :fio_contact

          # @return [String]  Должность контакта по техническим вопросам.
          property :position_contact

          # @return [String]  Коллегиальный орган управления (исполнительный орган).
          property :jointGoverning_body

          # @return [String]  ФИО и должность членов коллегиального органа.
          property :joint_body_members

          # @return [String]  Вид деятельности для категории "Другое".
          property :business_activity

          # @return [String]  Url сайта, задается при регистрации партнера.
          property :url

          # @return [String]  Откуда Вы узнали.
          property :where_from_do_you_know

          # @return [String]  Подробности, откуда Вы узнали.
          property :where_from_do_you_know_details

          # @return [String]  Промо-код, задается при регистрации партнера.
          property :promocode

          # @return [String]  Номер ИНН, задается при регистрации партнера-резидента.
          property :inn

          # @return [String]  ФИО руководителя.
          property :fio_director

          # @return [String]  Контактный телефон директора.
          property :phone_director

          # @return [String]  Адрес постоянно действующего органа управления.
          property :legal_address

          # @return [String]  Почтовый адрес.
          property :post_address

          # @return [String]  Контактный телефон.
          property :phone_contact

          # @return [String]  Телефон по финансовым вопросам.
          property :phone_accountant

          # @return [String]  Телефон по техническим вопросам.
          property :phone_support

          # @return [String]  Факс.
          property :fax

          # @return [String]  Контактный e-mail, задается при регистрации партнера.
          property :contact_email

          # @return [String]  E-mail финансовой службы.
          property :finance_email

          # @return [String]  E-mail технической поддержки.
          property :technical_email

          # @return [String]  Часовой пояс пользователя. Список идентификаторов временных зон, которые используются в системе, доступен на странице wikipedia.org.
          property :timezone

          # @return [String]  язык интерфейса пользователя. RU - русский, EN - английский.
          property :ui_language

          # @return [String]  Аадрес электронной почты.
          property :email_for_notifications

          # @return [String]  Статус "Содержимое сайта / товары и услуги соответствуют требованиям законодательства РФ и страны регистрации".
          property :partner_conditions_laws

          # @return [String]  Статус "Содержимое сайта соответствует общепринятым морально-этическим нормам".
          property :partner_conditions_ethical

          # @return [String]  Статус "Товары или услуги имеют исчерпывающее описание, не подразумевающее двоякое толкование".
          property :partner_conditions_full_desc

          # @return [String]  Статус "Сайт не размещён на бесплатном хостинге".
          property :partner_conditions_hosting

          # @return [String]  Статус "На сайте присутствует информация о получателе платежей, доступная без регистрации плательщика".
          property :partner_conditions_payee

          # @return [String]  Статус "На сайте присутствует контактная информация для плательщиков, доступная без регистрации".
          property :partner_conditions_payer

          # @return [String]  Статус "Сайт полностью функционален и заполнен контентом".
          property :partner_conditions_site

          # @return [String]  Статус "Сайт содержит доступную без регистрации информацию о том, что оплата происходит с использованием сервиса PayAnyWay".
          property :partner_conditions_paw_info

          # @return [String]  Статус "Описание порядка и процесса оплаты, а также информация о временном промежутке между оплатой и отгрузкой (доставкой) товара или предоставлением услуги доступны без регистрации".
          property :partner_conditions_payment_info

          # @return [String]  Статус "Все необходимые данные внесены и являются актуальными".
          property :partner_conditions_correct_data

          # @return [String]  Статус "На сайте размещены документы, необходимые для совершения сделки между интернет-магазином и клиентами в соответствии с требованиями Законодательства РФ".
          property :partner_conditions_documents

          # @return [String]  Подробности для "Содержимое сайта / товары и услуги соответствуют требованиям законодательства РФ и страны регистрации".
          property :partner_conditions_laws_details

          # @return [String]  Подробности для "Содержимое сайта соответствует общепринятым морально-этическим нормам".
          property :partner_conditions_ethical_details

          # @return [String]  Подробности для "Товары или услуги имеют исчерпывающее описание, не подразумевающее двоякое толкование".
          property :partner_conditions_full_desc_details

          # @return [String]  Подробности для "Сайт не размещён на бесплатном хостинге".
          property :partner_conditions_hosting_details

          # @return [String]  Подробности для "На сайте присутствует информация о получателе платежей, доступная без регистрации плательщика".
          property :partner_conditions_payee_details

          # @return [String]  Подробности для "На сайте присутствует контактная информация для плательщиков, доступная без регистрации".
          property :partner_conditions_payer_details

          # @return [String]  Подробности для "Сайт полностью функционален и заполнен контентом".
          property :partner_conditions_site_details

          # @return [String]  Подробности для "Сайт содержит доступную без регистрации информацию о том, что оплата происходит с использованием сервиса PayAnyWay".
          property :partner_conditions_paw_info_details

          # @return [String]  Подробности для "Описание порядка и процесса оплаты, а также информация о временном промежутке между оплатой и отгрузкой (доставкой) товара или предоставлением услуги доступны без регистрации".
          property :partner_conditions_payment_info_details

          # @return [String]  Подробности для "Все необходимые данные внесены и являются актуальными".
          property :partner_conditions_correct_data_details

          # @return [String]  Подробности для "На сайте размещены документы, необходимые для совершения сделки между интернет-магазином и клиентами в соответствии с требованиями Законодательства РФ".
          property :partner_conditions_documents_details

          # @return [String]  Дата отправки Заявления.
          property :agreement_sent_date

          # @return [String]  Способ отправки Заявления.
          property :agreement_sent_method

          # @return [String]  Вид капитала.
          property :capital_type

          # @return [String]  Размер зарегистрированного капитала.
          property :registered_capital_size

          # @return [String]  Размер оплаченного капитала.
          property :paid_capital_size

          # @return [String]  Сведения о наличии задолженности перед бюджетом по налогам и сборам.
          property :budget_arrears_absense
        end
      end
    end
  end
end
