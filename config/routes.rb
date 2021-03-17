Rails.application.routes.draw do
  root 'whiskeys#index'
  resources :whiskeys
  resources :score_types
  namespace :api do
    namespace :v1 do
      resources :search, only: [:index]
    end
  end
  resources :search, only: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
