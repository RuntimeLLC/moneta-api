require 'rspec'
require 'pry'
require 'rspec/its'
require 'moneta/api'
require 'yaml'

config = YAML.load(File.read(File.join(Dir.pwd, 'spec/support/moneta.yml')))

$username = config['username']
$password = config['password']
