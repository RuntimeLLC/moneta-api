require 'rspec'
require 'pry'
require 'rspec/its'
require 'moneta/api'
require 'yaml'
require 'vcr'

config = YAML.load(File.read(File.join(Dir.pwd, 'spec/support/moneta.yml')))

$username = config['username']
$password = config['password']

VCR.configure do |c|
  c.cassette_library_dir = File.join(Dir.pwd, 'spec/vcr')
  c.hook_into :fakeweb
  c.filter_sensitive_data('<USERNAME>') { $username }
  c.filter_sensitive_data('<PASSWORD>') { $password }
end

RSpec.configure do |c|
  c.around(:each, :vcr) do |example|
    name = example.metadata[:full_description].split(/\s+/, 2).join('/').downcase.gsub(/[^\w\/]+/, '_')
    options = example.metadata.select{ |key| [ :record, :match_requests_on ].member?(key) }
    VCR.use_cassette(name, options) { example.call }
  end
end
