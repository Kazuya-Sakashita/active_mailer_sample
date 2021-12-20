require 'sidekiq/web'

Rails.application.routes.draw do
  resources :posts
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

    mount Sidekiq::Web, at: '/sidekiq'
end
