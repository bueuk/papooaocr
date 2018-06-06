Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'images#new'
  resources :images, only: [:index, :new, :create, :show]
end
