Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :walkers
  resources :dogs
  resources :walks, only: [:new, :show, :edit, :create, :destroy]

  root 'sessions#new'

  get '/home', to: 'application#home', as: 'home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create', as: 'session'
  delete '/logout', to: 'sessions#new'
end
