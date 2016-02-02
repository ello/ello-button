require 'bundler'
Bundler.require

require 'bundler/setup'
require 'sinatra'
configure { set :server, :puma }
require 'newrelic_rpm'
require 'rubygems'
require 'dotenv'
Dotenv.load
require './server'
require 'tilt/erb'

run ElloButtonApp
