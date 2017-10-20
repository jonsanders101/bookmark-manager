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

params[:Tags].split(', ').each do |tag|
    link.tags << Tag.first_or_create(name: tag)
    link.save
  end
redirect '/links'
end

get "/tags/:name" do
  @tag_filter = params[:name]
  #Keep this nonsense for reference: @links = LinkTag.all(tag_id: Tag.first(name: params[:name]).id).map(&:link_id).map {|id| Link.first(id: id)}
  tag = Tag.first(name: @tag_filter)
  @links = tag ? tag.links : []
  erb :'tag/filter'
end

run! if app_file == $0

end
