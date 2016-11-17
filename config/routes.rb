Rails.application.routes.draw do
  root 'tweet#index'
  get 'likes/create'

   get "profiles/:id" => "profiles#show", as: :profile
   get "profiles" => "profiles#index"
  
   devise_for :users
   resources :tweets do 
     resource :like
   end 
   
   resources :relationships

  get "feed" => "profiles#feed"
end 
   
