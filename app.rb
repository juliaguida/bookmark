require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

get '/' do
  'BookmarkManager'
end

get '/bookmarks' do 
  bookmarks = [
     "https://www.google.com/",
     "https://www.youtube.com/",
     "https://www.gmail.com/"
    ]
  bookmarks.join 
end

run! if app_file == $0 
end
