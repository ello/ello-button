# frozen_string_literal: true

require 'bundler'
Bundler.require

require 'bundler/setup'
require 'sinatra'
configure { set :server, :puma }
require 'newrelic_rpm'
require 'rubygems'
require './server'
require 'tilt/erb'

if ENV['RACK_ENV'] == 'development'
  require 'dotenv'
  Dotenv.load
end

run ElloButtonApp
