ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative '../setup'


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
  link = Link.create(
    title: params[:Name],
    url: params[:URL])
  tag = Tag.first_or_create(
    name: params[:Tags])
    link.tags << tag
    link.save
redirect '/links'
end

get "/tags/:name" do
#@links = LinkTag.all(tag_id: Tag.first(name: params[:name]).id).map(&:link_id).map {|id| Link.first(id: id)}
tag = Tag.first(name: params[:name])
@links = tag ? tag.links : []
erb :'tag/filter'
end

run! if app_file == $0

end
