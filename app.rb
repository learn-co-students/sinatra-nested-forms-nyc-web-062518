require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/new' do
      erb :'pirates/new'
    end

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

        params[:pirate][:ships].each do |ship_details|
          Ship.new(ship_details)
        end

      @ships = Ship.all

      erb :'pirates/show'
    end

    get '/pirates' do
      erb :'pirates/show'
    end


  end
end
