Rails.application.routes.draw do


  devise_for :users, controllers: { registrations: "users/registrations" }

  root 'products#index'
  
  resources :products, only: [:index, :show] do
  	resources :orders, only: [:create]  	
  end	 

  resources :carts, only: [:show]
 

  



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
