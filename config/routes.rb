Rails.application.routes.draw do
  # Session
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # User
  namespace :admin do
    resources :users
  end

  # Task
  root to: 'tasks#index'
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
