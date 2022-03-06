Rails.application.routes.draw do
    root "dm#index"


    

    
    resources :players
    resources :characters
    resources :dms
    resources :campaigns
    resources :weapons

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
