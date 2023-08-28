Rails.application.routes.draw do
  root "registrations#new"
  
  resources :articles do
    resources :comments
  end
end
