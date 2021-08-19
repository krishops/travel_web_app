Rails.application.routes.draw do
  # root to: 'dashboard#index'
  root to: 'home#index'
  get 'dashboard/index' => 'dashboard#index'
  get 'dashboard/country' => 'dashboard#country'
  get 'dashboard/city' => 'dashboard#city'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  get '/test' => 'authorizes#secret'
end
