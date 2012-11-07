require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'color'
require 'rack-flash'
use Rack::Flash

require File.expand_path('../lib/led_controller', __FILE__)

enable :sessions

get '/' do
  erb :index
end

get '/display/:colour' do |colour|
  flash[:notice] = LedController.display_colour colour
  redirect to('/')
end