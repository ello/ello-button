require 'bundler'
Bundler.require

require 'bundler/setup'
require 'sinatra'
configure { set :server, :puma }
require 'rubygems'
require './server'
require 'tilt/erb'

run ElloButtonApp
