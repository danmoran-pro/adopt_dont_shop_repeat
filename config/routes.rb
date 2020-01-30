Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shelters do 
    resources :pets, only: [:new, :index]
  end 
  
  # get "/shelters/:shelter_id/pets", to: "shelterpets#index"
  # get "/shelters/:shelter_id/pets/new", to: "pets#new"

  resources :pets, only: [:index, :show]
end
