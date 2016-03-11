require './app/models/tweet'

#classes are app factories and they pump out 
#new instance of our app whenever user wants it

class ApplicationController < Sinatra::Base
  

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    Tweet.new("shakira-shakira", "My lips don't lie,breh.")
    
    Tweet.new("andres_cedano", "im the best.")
    
    @tweets = Tweet.all
    erb :index 
  end

end

