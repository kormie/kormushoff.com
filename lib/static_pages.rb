require 'sinatra/base'

class StaticPages < Sinatra::Base
  get '/' do
    @title = "Home"
    haml :index
  end

  get '/henry' do
    send_file File.expand_path('views/henry.html', __dir__)
  end
end
