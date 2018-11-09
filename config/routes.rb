Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :update, :show, :create]
        post '/login', to: "auth#create"
      resources :recipes, only: [:index, :update, :show, :create]
      resources :saved_recipes, only: [:index, :show]
    end
  end
end
