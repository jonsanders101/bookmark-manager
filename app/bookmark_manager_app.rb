
require 'sinatra/base'
require './app/models/link.rb'


class BookmarkManager < Sinatra::Base

enable :sessions

get '/links' do
  @links = Link.all
  erb :links
end

run! if app_file == $0

end
