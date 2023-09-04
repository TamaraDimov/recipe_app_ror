Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  } 
  resources :foods, only: [:index]
  resources :recipes, only: [:index, :show]
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "welcome#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
