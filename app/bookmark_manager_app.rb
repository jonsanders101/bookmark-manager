ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './app/models/link.rb'


class BookmarkManager < Sinatra::Base

enable :sessions

get '/links' do
  @links = Link.all
  erb :links
end

get '/links/new' do
  erb :'links/new'
end

post '/links' do
  Link.create(
    title: params[:Name],
    url: params[:URL]
  )
redirect '/links'
end

run! if app_file == $0

end
