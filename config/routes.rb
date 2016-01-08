Rails.application.routes.draw do
  get 'welcome/index'

  resources :users
  resources :tasks
  resources :habits

  root 'welcome#index'

  match 'complete_daily_habit' => 'habits#complete_daily_habit', :via => :post

  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  get '/logout' => "sessions#destroy"

  get '/signup' => "users#new"
  post '/users' => "users#create"

end
