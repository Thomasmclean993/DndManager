class CampaignsController < ApplicationController
   def index
        @campaigns = Campaign.all
        @sessions = Session.all
   end 

    def show 
        @campaign = Campaign.find(params[:id])
    end 

    def new
        @campaign = Campaign.new
    end

    def create 
        @campaign = Campaign.new(campaign_paramas)
    
        if @campaign.save
            redirect_to @campaigns
        else  
            render :new
        end
    end 

    def edit
        @campaign = Campaign.find(params[:id])
    end

    def update
        @campaign = Campaign.find(params[:id])

        if @campaign.update(character_params)
            redirect_to @campaigns
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
    def campaign_paramas
        params.require(:campaign).permit(:name)
    end
end


