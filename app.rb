require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_one] = params[:player_1]
    session[:player_two] = params[:player_2]
    redirect to('/play')
  end

  get '/play' do
    @player_1 = session[:player_one]
    @player_2 = session[:player_two]
    erb :play
  end

  run! if app_file == $0
end