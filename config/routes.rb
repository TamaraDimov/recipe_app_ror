Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  } 
  resources :foods, only: [:index, :new, :create, :destroy, :show]
  resources :recipes, except: [:edit, :update] do
    member do
      patch :public_toggle
      # get :general_shopping_list
    end
  end
  resources :recipes, except: %i[edit update] do
    resources :recipe_foods, except: %i[edit update]
    collection do
      get 'public'
    end
    member do
      get 'general_shopping_list'
    end
  end
  root "welcome#index"
end


