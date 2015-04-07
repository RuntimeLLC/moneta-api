require 'rspec'
require 'pry'
require 'rspec/its'
require 'moneta/api'
require 'yaml'
require 'vcr'

config = YAML.load(File.read(File.join(Dir.pwd, 'spec/support/moneta.yml')))

$username = config['username']
$password = config['password']

VCR.configure do |config|
  config.cassette_library_dir = File.join(Dir.pwd, 'spec/vcr')
  config.hook_into :fakeweb
  config.filter_sensitive_data('<USERNAME>') { $username }
  config.filter_sensitive_data('<PASSWORD>') { $password }
end

RSpec.configure do |config|
  config.around(:each, :vcr) do |example|
    name = example.metadata[:full_description].split(/\s+/, 2).join('/').downcase.gsub(/[^\w\/]+/, '_')
    options = example.metadata.select{ |key| [ :record, :match_requests_on ].member?(key) }
    VCR.use_cassette(name, options) { example.call }
  end

  config.before(:each) do
    allow_any_instance_of(Moneta::Api::Service).to receive(:wsdl).and_return(
      Nokogiri::XML(File.read('spec/support/wsdl'))
    )
  end
end
