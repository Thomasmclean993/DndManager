class CampaignsController < ApplicationController
   def index
        @campaigns = Campaign.all
    
   end 

    def show 
        @campaign = Campaign.find(params[:id])
    end 

    def new
        @campaign = Campaign.new
    end

    def create 
        @campaign = Campaign.new(campaign_params)
    
        if @campaign.save
            redirect_to root_path
        else  
            render :new
        end
    end 

    def edit
        @campaign = Campaign.find(params[:id])
    end

    def update
        @campaign = Campaign.find(params[:id])

        if @campaign.update(campaign_params)
            redirect_to root_path
        else 
            render :edit
        end
    end

    def destroy
        @campaign = Campaign.find(params[:id])
        @campaign.destroy
        redirect_to root_path
    end 

    private
    def campaign_params
        params.require(:campaign).permit(:name)
    end
end


