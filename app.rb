require 'sinatra/base'
require_relative './lib/bookmark'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  # get '/bookmarks' do
  #   @bookmarks = 
  #   [
  #     "http://www.makersacademy.com",
  #     "http://www.destroyallsoftware.com",
  #     "http://www.google.com"
  #   ]
  #   erb :'bookmarks/index'
  # end

  get '/bookmarks' do
  
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0 
end
