require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do

    erb :user_input
  end

  post "/" do
    @string = PigLatinizer.new
    @string.original_text = params[:string]

    erb :results
  end

end
