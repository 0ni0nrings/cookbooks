# frozen_string_literal: true
require 'chefspec'
require 'chefspec/berkshelf'

Rspec.configure do |config|
  config.platform = 'centos'
  config.version = '7.2.1511'
end

