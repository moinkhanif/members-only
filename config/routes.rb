Rails.application.routes.draw do
  devise_for :members, controllers: { registrations: 'registrations' }
  resources :members, only: [:new, :create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "home#index"
  root to: 'posts#index'
  resources :posts
end
