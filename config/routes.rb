Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  namespace :api do
    post "/avatars" => "avatars#create"
   
  end
end
