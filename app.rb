require "sinatra/base"

class Battle < Sinatra::Base # Base class for all Sinatra applications and middleware
  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect to("/play")
  end

  get "/play" do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_1_points = 100
    @player_2_points = 100
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
