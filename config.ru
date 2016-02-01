require 'bundler'
Bundler.require

require 'bundler/setup'
require 'sinatra'
require 'rubygems'
require './server'
require 'tilt/erb'

run ElloButtonApp
