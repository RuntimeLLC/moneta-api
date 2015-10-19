describe Moneta::Api::Types::Profile::Client do
  let(:params) do
    {
      unitid: 1
    }
  end
  let(:attributes_hash) { described_class.build(params).to_hash }

  subject { attributes_hash }

  its(['attribute']) { is_expected.to be_a Array }

  describe 'attribute' do

    subject { attributes_hash['attribute'] }

    its(:first) { is_expected.to eq({ 'key' => 'UNITID', 'value' => 1 }) }
  end
end
