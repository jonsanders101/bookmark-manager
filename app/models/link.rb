require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  property :id,         Serial    # An auto-increment integer key
  property :title,      String    # A varchar type string, for short strings
  property :url,       String      # A text block, for longer string data.
end

## Create an initial bookmark

# @bookmark = Link.create(
#   :title => "First bookmark",
#   :url => "First bookmark link"
# )
#Link our model with our database
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test")
#After we have set up a resource - checks it for validity
DataMapper.finalize
#Migrates data to database
DataMapper.auto_migrate!
