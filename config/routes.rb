Rails.application.routes.draw do
  get 'welcome/index'

  resources :users
  resources :tasks
  resources :habits

  root 'welcome#index'

  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  get '/logout' => "sessions#destroy"

  get '/signup' => "users#new"
  post '/users' => "users#create"

end
