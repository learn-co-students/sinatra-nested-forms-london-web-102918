require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      #the instructions
      erb :root

    end

    get "/new" do
      #the instructions

      erb :"pirates/new"
    end

    post "/pirates" do
      #the instructions
      @pirate_name = params["pirate"]["name"]
      @pirate_weight = params["pirate"]["weight"]
      @pirate_height = params["pirate"]["height"]
      @s1_name = params["pirate"]["ships"][0]["name"]
      @s1_weight= params["pirate"]["ships"][0]["type"]
      @s1_height= params["pirate"]["ships"][0]["booty"]
      @s2_name= params["pirate"]["ships"][1]["name"]
      @s2_weight= params["pirate"]["ships"][1]["type"]
      @s2_height= params["pirate"]["ships"][1]["booty"]
      erb :"pirates/show"

    end
  end
end
