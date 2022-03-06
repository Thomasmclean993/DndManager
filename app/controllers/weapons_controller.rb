class WeaponsController < ApplicationController
    def index 
        @weapons = Weapon.all
    end 

    def show
        @weapon = Weapon.find(params[:id])
    end

    def new 
        @weapon = Weapon.new
    end 
    
    def create 
        
        @weapon = Weapon.new(weapon_params)
        
        if @weapon.save
            redirect_to root_path
        else  
            render :new
        end 
    end 


    def edit 
        @weapon = Weapon.find(params[:id])
    end 

    def update
        @weapon = Weapon.find(weapon_params)

        if weapon.update
            redirect_to @weapons
        else  
            render :edit 
        end 
    end 

    def destroy
        @weapon = Weapon.find(params[:id])
        @wweapon.destroy
        redirect_to :index
    end 

    private 
     def weapon_params
        params.require(:weapon).permit(:name, :weapon_types, :range, :damage) 
     end

end