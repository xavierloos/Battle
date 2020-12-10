require "sinatra/base"

class Battle < Sinatra::Base # Base class for all Sinatra applications and middleware
  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect to("/play")
  end

  get "/play" do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player_1_hp = $player_1.hp
    @player_2_hp = $player_2.hp
    erb :play
  end

  get "/attack" do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $player_1.attack($player_2)
    @player_2_hp = $player_2.hp
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
