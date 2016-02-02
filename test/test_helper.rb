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

Capybara.app = ElloButtonApp
