Rails.application.routes.draw do
  # devise_for :users
  get 'home/index'
  # EXAMPLE HTML ROUTE
  get "/posts" => "posts#index"
  get "/posts" => "posts#new"
  get "/posts/:id" => "posts#show"
  post "/posts" => "posts#create"
  get "/posts:id/edit" => "posts#edit"
  patch "/posts/:id" => "posts#update"
  delete "/posts/:id" => "posts#destroy"
  
  root 'home#index'


  #google calendar authorization testing routes 
  get '/redirect', to: 'google_calendar#redirect', as: 'redirect'
  get '/callback', to: 'google_calendar#callback', as: 'callback'
  get '/calendars', to: 'google_calendar#calendars', as: 'calendars'
  get '/events/:calendar_id', to: 'google_calendar#events', as: 'events', calendar_id: /[^\/]+/
  post '/events/:calendar_id', to: 'google_calendar#new_event', as: 'new_event', calendar_id: /[^\/]+/

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
