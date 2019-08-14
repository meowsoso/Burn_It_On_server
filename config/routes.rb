# == Route Map
#
#   Prefix Verb   URI Pattern          Controller#Action
#    users GET    /users(.:format)     users#index
#          POST   /users(.:format)     users#create
# new_user GET    /users/new(.:format) users#new
#     user PATCH  /users/:id(.:format) users#update
#          PUT    /users/:id(.:format) users#update
#    login GET    /login(.:format)     session#new
#          POST   /login(.:format)     session#create
#          DELETE /login(.:format)     session#destroy

Rails.application.routes.draw do

  resources :flights
  resources :planes
resources :users, :only => [:new, :create, :update, :index]


get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'
end
