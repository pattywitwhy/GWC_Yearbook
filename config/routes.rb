Rails.application.routes.draw do
  namespace :api do
    post '/users' => 'users#create'

    post '/sessions' => 'sessions#create'

    get '/students' => 'students#index'
    post '/students' => 'students#create'
    get '/students/:id' => 'students#show'
    patch '/students/:id' => 'students#update'
    delete '/students/:id' => 'students#destroy'

  end
end
