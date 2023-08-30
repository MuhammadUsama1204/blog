Rails.application.routes.draw do
  
  root 'articles#index'
  get '/sessions/new', to: "sessions#new"
  get 'controllers/sessions', to: "sessions#create"
  
  resources :articles do
    resources :comments
  end
end
