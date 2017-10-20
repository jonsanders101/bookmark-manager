class Tag
  include DataMapper::Resource

  property :id,         Serial
  property :name,      String
  property :test,   String

  has n, :links, :through => Resource

end
