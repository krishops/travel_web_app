Rails.application.routes.draw do
  root to: 'dashboard#index'
  get 'dashboard/result' => 'dashboard#result'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  get '/test' => 'authorizes#secret'
end
