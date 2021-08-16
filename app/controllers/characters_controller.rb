class CharactersController < ApplicationController
    # This action uses query string parameters b/c it gets run by an HTTP GET request
    # but this does not make any difference to way in which the parameters are accessed. 
    require "pry"
    
    def index  
        @characters = Character.all
    end 

    # Show uses POST parameters. they are most likely coming from an HTMl form
    # which the user has submitted. 

    def show 
        @character = Character.find(params[:id])
    end 
    # Uses GET request to gather information to be saved later. Does not save
    def new 
        @character = Character.new
    end 
    
    #This action actually saves the information and checks validations
    def create
        @character = Character.new(character_params)
        binding.pry
        if @character.save
            redirect_to @characters
        else
            render :new
        end
    end

    # similar to new/create, this allows to take saved information and edit the character.
    # update saves the changes.
    def edit
        @character = Character.find(params[:id])
    end

    def update
        @character = Character.find(params[:id])

        if @character.update(character_params)
            redirect_to @character
        else
            render :edit
        end 
    end 

    private
    def character_params
        params.require(:character).permit(:name, :owner, :race, :role, :level)
    end 
end