class CampaignController < ApplicationController
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


end
