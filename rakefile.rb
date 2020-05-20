ENV["LIBRARY_ENV"] ||= "development"

require_relative './config/environment.rb'
require 'sinatra/activerecord/rake'

# Type `rake -T` on your command line to see the available rake tasks.

task :console do
  Pry.start
end
