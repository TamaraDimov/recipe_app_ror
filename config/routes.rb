# config/routes.rb
Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  } 

  resources :foods, only: [:index, :new, :destroy, :show]
  resources :recipes, only: [:index, :new, :show, :destroy]

  get 'public_recipes', to: 'recipes#public', as: 'public_recipes'  # Define a custom route

  root "welcome#index"
end
