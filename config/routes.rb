Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors do
    resources :appointments, only: [:index, :new, :create]
  end

  resources :patients do
    resources :appointments
  end

  resources :appointments
  resources :admins


  root 'sessions#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'admins#new'
  post '/signup', to: 'admins#create'

end