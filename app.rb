require_relative 'config/environment'

class App < Sinatra::Base

  get '/user_input' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = PigLatinizer.new(params[:user_phrase])
    erb :pig_latin
  end


end
