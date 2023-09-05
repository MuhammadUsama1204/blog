Rails.application.routes.draw do
  get 'people/index'
  resources :clients
  
   root 'articles#index'
  #  get '/sessions/new', to: "sessions#new"
  # get 'controllers/sessions', to: "sessions#create"
  
 
  # resource :profile 
   resources :users
  
  
  # resolve("Client") { [:profile] }
  
  resources :people
 
  resources :articles do
    resources :comments

  end
end
