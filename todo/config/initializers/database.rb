require "yaml"
Mongoid.load!("config/db.yml", ENV['RACK_ENV'])
# MongoDB Configuration
