Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "regions#index"

  resources :regions, only: [:index, :show]
  resources :restaurants, only: [:new, :create, :destroy]
  get "/dashboard", to: "dashboards#index"
  get "/admin" => "dashboards#index", :as => :admin_root
end
