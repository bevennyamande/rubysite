require 'sinatra'
set :public_folder, 'static'
set :views, 'templates'
# require 'sinatra/reloader' if development?

get '/' do
  erb :home
end


get '/bet/:stake/:number' do
    stake = params[:stake].to_i
    number = params[:number].to_i
    roll = rand(6) + 1
    if number == roll
      "dice landed on #{roll} you won your stake is #{6*stake}"
    else
      "dice landed on #{roll} you lost your stake of  #{stake}"
    end
end

