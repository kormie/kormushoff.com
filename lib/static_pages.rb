require 'sinatra/base'

class StaticPages < Sinatra::Base
  get '/' do
    @title = "Home"
    haml :index
  end
end
