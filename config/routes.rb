Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
   get "/posts" => "posts#index"
    get "/posts" => "posts#new"

  #google calendar authorization testing routes 
  # get '/redirect', to: 'example#redirect', as: 'redirect'
  # get '/callback', to: 'example#callback', as: 'callback'

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/posts" => "posts#index"
  end
end
