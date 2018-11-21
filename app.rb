require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here
    get '/' do
      # binding.pry
      erb :"pirates/index"
    end

    get '/new' do
      erb:"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :"pirates/show"
    end
  end
end
