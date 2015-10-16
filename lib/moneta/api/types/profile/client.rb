module Moneta
  module Api
    module Types
      module Profile
        class Client < HashEntity
          # @return [String] ID пользователя в системе МОНЕТА.РУ.
          property :unitid
          
          # @return [String] Фамилия.
          property :last_name
          
          # @return [String] Имя.
          property :first_name
          
          # @return [String] Отчество.
          property :middle_initial_name
          
          # @return [String] Псевдоним.
          property :alias
          
          # @return [String] Страна.
          property :country
          
          # @return [String] Область, республика, штат.
          property :state
          
          # @return [String] Город.
          property :city
          
          # @return [String] Индекс.
          property :zip
          
          # @return [String] Адрес.
          property :address
          
          # @return [String] Адрес электронной почты.
          property :email_for_notifications
          
          # @return [String] Номер телефона.
          property :phone
          
          # @return [String] Номер сотового телефона.
          property :cell_phone
          
          # @return [String] Url сайта.
          property :url
          
          # @return [String] Пол. MALE - мужской, FEMALE - женский.
          property :sex
          
          # @return [String] Дата рождения (формат: yyyy-mm-dd).
          property :date_of_birth
          
          # @return [String] Номер ИНН.
          property :inn
          
          # @return [String] СНИЛС.
          property :snils
          
          # @return [String] Часовой пояс пользователя. Список идентификаторов временных зон, которые используются в системе, доступен на странице wikipedia.org.
          property :timezone
          
          # @return [String] Язык интерфейса пользователя. RU - русский, EN - английский.
          property :ui_language
        end
      end
    end
  end
end
