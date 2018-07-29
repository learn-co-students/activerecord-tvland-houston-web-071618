require "bundler/setup"

require "sinatra/activerecord"



Bundler.require

# Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
#Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

require_relative "../app/models/actor.rb"
 require_relative "../app/models/character.rb"
 require_relative "../app/models/network.rb"
 require_relative "../app/models/show.rb"

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)

