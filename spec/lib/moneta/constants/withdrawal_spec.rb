describe 'Moneta withdrawal types' do
  describe 'Bank Account' do
    subject { Moneta::Constants::Withdrawal::BANK }

    it { is_expected.to eq 5 }
  end

  describe 'Yandex Money' do
    subject { Moneta::Constants::Withdrawal::YANDEX_MONEY }

    it { is_expected.to eq 13 }
  end

  describe 'VKontakte' do
    subject { Moneta::Constants::Withdrawal::VKONTAKTE }

    it { is_expected.to eq 139 }
  end

  describe 'CyberPlat' do
    subject { Moneta::Constants::Withdrawal::CYBER_PLAT }

    it { is_expected.to eq 1144 }
  end

  describe 'Credit Card via Russian Standard Bank' do
    subject { Moneta::Constants::Withdrawal::CARD_RUSSIAN_STANDARD }

    it { is_expected.to eq 275 }
  end

  describe 'Credit Card via Alpha Bank' do
    subject { Moneta::Constants::Withdrawal::CARD_ALFA_BANK }

    it { is_expected.to eq 279 }
  end

  describe 'Money@Mail.ru' do
    subject { Moneta::Constants::Withdrawal::MAIL_MONEY }

    it { is_expected.to eq 268 }
  end

  describe 'QIWI' do
    subject { Moneta::Constants::Withdrawal::QIWI }

    it { is_expected.to eq 255 }
  end

  describe 'Webmoney WMR' do
    subject { Moneta::Constants::Withdrawal::Webmoney::WMR }

    it { is_expected.to eq 2 }
  end

  describe 'Webmoney WMZ' do
    subject { Moneta::Constants::Withdrawal::Webmoney::WMZ }

    it { is_expected.to eq 3 }
  end

  describe 'Webmoney WME' do
    subject { Moneta::Constants::Withdrawal::Webmoney::WME }

    it { is_expected.to eq 4 }
  end
end
