Rails.application.routes.draw do

  resources :toggle_lists do
    resources :toggle_items
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "toggle_lists#index"

end
