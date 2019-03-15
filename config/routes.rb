Rails.application.routes.draw do

  namespace :api do
  get '/avatars/:id' => 'avatars#show'
  post "/avatars" => "avatars#create"

  get '/habits' => 'habits#index'
  post '/habits' => 'habits#create'
  get '/habits/:id' => 'habits#show'
  patch '/habits/:id' => 'habits#update'
  delete '/habits/:id' => 'habits#destroy'

  post '/habit_completeds' => 'habit_completeds#create'

  get '/loots' => 'loots#index'
  post '/loots' => 'loots#create'
  get '/loots/:id' => 'loots#show'
  patch '/loots/:id' => 'loots#update'
  delete '/loots/:id' => 'loots#destroy'

  post '/purchased_loots' => 'purchased_loots#create'
  delete '/purchased_loots/:id' => 'purchased_loots#destroy'

  post '/sessions' => 'sessions#create'
   
  end
end
