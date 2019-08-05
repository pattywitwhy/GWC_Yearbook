Rails.application.routes.draw do
  namespace :api do

    post '/sessions' => 'sessions#create'

    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'

  end
end
