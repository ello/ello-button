require 'capybara'
require 'capybara/dsl'
require 'bundler/setup'
require 'sinatra'
require 'minitest/autorun'
require 'minitest/pride'
require './server'

Capybara.app = ElloButtonApp
