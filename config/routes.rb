Rails.application.routes.draw do

  resources :toggle_lists do
    resources :toggle_items do
      member do
        patch :complete
        patch :uncomplete
      end
    end
  end
  
root "toggle_lists#index"

end
