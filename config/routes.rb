# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#index'

  devise_for :admins

  resources :posts do
    resources :comments
  end

  get '/search', to: 'posts#search'

  get '/about', to: 'about#index'

  get '/contact', to: 'contact#new'
  get '/contact/success', to: 'contact#index'
  post '/contact', to: 'contact#create'
end
