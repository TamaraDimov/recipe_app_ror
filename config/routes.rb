Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  } 
  resources :foods, only: [:index, :new, :destroy, :show]
  resources :recipes, only: [:index, :new, :show, :destroy]
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "welcome#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
