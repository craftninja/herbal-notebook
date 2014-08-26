Rails.application.routes.draw do

  root "welcome#index"

  resources :users
  resources :sessions
  resources :herbs
  post '/find_herb' => 'herbs#find_herb'

end
