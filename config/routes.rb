Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lists
      resources :users
          resources :places
          resources :users
          post '/login', to: "sessions#create"
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      end
  end
end
