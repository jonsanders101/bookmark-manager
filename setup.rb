require 'data_mapper'
require 'dm-postgres-adapter'

#Link our model with our database
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
#After we have set up a resource - checks it for validity

require './app/models/link.rb'
require './app/models/tag.rb'


DataMapper.finalize
#Migrates data to database
DataMapper.auto_upgrade!
