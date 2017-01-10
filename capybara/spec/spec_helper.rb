# frozen_string_literal: true
require 'rspec/expectations'
require "capybara/spec/spec_helper"
require "pry"
require 'tcfg'

RSpec.configure do |config|
  Capybara::SpecHelper.configure(config)
  Capybara.default_driver = :selenium
  config.include Capybara::DSL
  config.include TCFG::Helper
end
