Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shelters do 
    resources :pets, only: [:index, :new]
  end 

  resources :pets, only: [:index, :show]
  
end
