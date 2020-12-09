require 'sinatra/base'

class Battle < Sinatra::Base # Base class for all Sinatra applications and middleware
  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
