Rails.application.routes.draw do
  resources :clients
  
  root 'articles#index'
  get '/sessions/new', to: "sessions#new"
  get 'controllers/sessions', to: "sessions#create"
  
 
  resource :profile 
  resources :users
  
  
  resolve("Client") { [:profile] }
  
 
  resources :articles do
    resources :comments
  end
end
