Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#index'

  get 'regions/:id', to: 'homes#index'
  get 'regions/:id/restaurant', to: 'homes#index'
  get 'regions/:id/restaurant/:id', to: 'homes#index'

  namespace :api do
    namespace :v1 do
      resources :regions, only: [:show]
      resources :restaurants, only: [:index, :show]
    end
  end
end
