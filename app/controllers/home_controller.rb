class HomeController < ApplicationController
    def index
        @players = Player.all
        @characters = Character.all
    end 
end 