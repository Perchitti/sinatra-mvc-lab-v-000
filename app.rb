require_relative 'config/environment'

class App < Sinatra::Base

  get '/user_input' do
    erb :user_input
  end

  post '/user_input' do
    @pig_latin = PigLatinizer.new(params[:user_text])
    erb :output
  end


end
