Rails.application.routes.draw do
  get '/login' => "sessions#new"
  post '/sessions' => "sessions#create"
  get '/logout' => "sessions#destroy"

  resources :users, :only => [:new, :create]
end
