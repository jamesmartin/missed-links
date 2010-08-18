require 'rubygems'
require 'sinatra/base'

class RootApp < Sinatra::Base
  set :static, true
  set :public, File.join(File.dirname(__FILE__), 'public')

  get '/' do 
    haml :index 
  end

end
