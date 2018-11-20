require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do
      @pirate = params[:pirate]
      @ships = []
      @pirate[:ships].each do |s|
        @ships << s
      end

      erb :"pirates/show"
    end
  end
end
