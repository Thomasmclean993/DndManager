class DmController < ApplicationController
    def index
        @dms = Dm.all 
        @players = Player.all
        @characters = Character.all
        @campaigns = Campaign.all
    end 

    def show 
        @dm = Dm.find(params[:id])
    end    

    def new
        @dm = Dm.new
    end

    def create
        @dm = Dm.new(dm_params)

        if @dm.save
            redirect_to @dm
        else
            render :new
        end
    end

    # similar to new/create, this allows to take saved information and edit the dm.
    # update saves the changes.
    def edit
        @dm = Dm.find(params[:id])
    end

    def update
        @dm = Dm.find(params[:id])

        if @dm.update(dm_params)
            redirect_to @dm
        else
            render :edit
        end 
    end 

    private
    def dm_params
        params.require(:name)
    end
end 