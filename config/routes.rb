Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  } 
  resources :foods, only: [:index, :new, :destroy, :show]
  resources :recipes, except: [:edit, :update] do
    collection do
      get 'public'
    end
  end

  root "welcome#index"
end
