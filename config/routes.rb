Rails.application.routes.draw do
  devise_for :admin_users, controllers: {
    sessions: 'admin_users/sessions',
    registrations: 'admin_users/registrations',
    passwords: 'admin_users/passwords',
  }


  get 'people/index'
  resources :clients

   root 'articles#index'
  # get '/sessions/new', to: "sessions#new"
  # get 'controllers/sessions', to: "sessions#create"

  get '/search', to: 'articles#search'



  # resource :profile
  # resources :users


  # resolve("Client") { [:profile] }

  resources :people

  resources :articles do
    resources :comments

  end
end
