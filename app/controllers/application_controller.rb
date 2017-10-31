require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @heros = params[:team][:members].map do |obj|
        Hero.new(obj)
      end

      @team = Team.new(params[:team])
      erb :team
    end


end
