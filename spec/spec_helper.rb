if ENV['CODECLIMATE_REPO_TOKEN']
  require 'simplecov'
  SimpleCov.start
end

require 'rspec'
require 'pry'
require 'rspec/its'
require 'moneta/api'
require 'yaml'
require 'vcr'
require 'webmock/rspec'

Dir['spec/support/**/*.rb'].each do |file|
  require File.join(File.dirname(__FILE__), '..', file)
end

config = YAML.load(File.read(File.join(Dir.pwd, 'spec/support/moneta.yml')))

cert_path = File.join(Dir.pwd, config['cert_path'])
cert_private_key_path = File.join(Dir.pwd, config['cert_private_key_path'])

$username = config['username']
$password = config['password']

$cert = OpenSSL::X509::Certificate.new(File.read(cert_path))
$cert_private_key = OpenSSL::PKey::RSA.new(File.read(cert_private_key_path), config['private_key_password'])

class WebHelper
  def self.with_real_connection
    WebMock.allow_net_connect!

    VCR.turned_off do
      yield
    end
  end
end

VCR.configure do |config|
  config.cassette_library_dir = File.join(Dir.pwd, 'spec/vcr')
  config.hook_into :webmock
  config.filter_sensitive_data('<USERNAME>') { $username }
  config.filter_sensitive_data('<PASSWORD>') { $password }
  config.filter_sensitive_data('<CERT_PASSWORD>') { $cert_pass }
  config.ignore_hosts 'codeclimate.com'
end

RSpec.configure do |config|
  config.around(:each, :vcr) do |example|
    name = example.metadata[:full_description].split(/\s+/, 2).join('/').downcase.gsub(/[^\w\/]+/, '_')
    options = example.metadata.select{ |key| [ :record, :match_requests_on ].member?(key) }
    VCR.use_cassette(name, options) { example.call }
  end
end
