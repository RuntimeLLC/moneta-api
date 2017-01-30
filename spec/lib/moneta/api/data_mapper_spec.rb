describe Moneta::Api::DataMapper do
  class Target
    include Moneta::Api::DataMapper

    property :field
  end

  it 'should set present value' do
    object = Target.build(field: 1)
    expect(object.field).to eq 1
  end

  it 'should set nil value' do
    object = Target.build(field: nil)
    expect(object.field).to be_nil
  end

  it 'should set false value' do
    object = Target.build(field: false)
    expect(object.field).to eq false
  end
end
