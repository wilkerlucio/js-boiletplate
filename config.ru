require 'bundler'
require 'sprockets'
require 'compass'
require 'sprockets-sass'
require 'bootstrap-sass'
require './app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'stylesheets'
  environment.append_path 'lib'
  environment.append_path 'test/lib'
  environment.append_path 'vendor'
  environment.append_path Compass::Frameworks['bootstrap'].templates_directory + '/../vendor/assets/javascripts'

  run environment
end

map '/' do
  run Sinatra::Application
end
