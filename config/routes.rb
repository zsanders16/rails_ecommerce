Rails.application.routes.draw do
  
  resources :categories do
    resources :items
  end
  
  resources :shopping_carts do
    resources :items do
      patch :add_item
      end
  end
  

  devise_for :users

  
  root "categories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
