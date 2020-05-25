Rails.application.routes.draw do
  devise_for :members
  resources :members, only: [:new, :create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
