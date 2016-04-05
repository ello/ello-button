require 'capybara'
require 'capybara/dsl'
require 'bundler/setup'
require 'sinatra'
require 'minitest/autorun'
require 'minitest/pride'
require 'dotenv'
Dotenv.load
require './server'
require 'tilt/erb'
require 'pry'

Capybara.app = ElloButtonApp

Capybara.register_driver(:rack_test_dnt) do |app|
  Capybara::RackTest::Driver.new(app, headers: { 'HTTP_DNT' => '1' })
end
