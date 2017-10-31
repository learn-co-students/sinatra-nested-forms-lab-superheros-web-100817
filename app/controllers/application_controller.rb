require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end

    post '/teams' do
      # binding.pry
      @team = Teams.new(params[:team][:name],params[:team][:motto])
      @super_heroes =[]
      params[:team][:members].each do |super_hero|
        @super_heroes << SuperHeroes.new(super_hero[:name],super_hero[:power],super_hero[:biography],params[:team][:name])
      end
      # binding.pry
      erb :team
    end

end
