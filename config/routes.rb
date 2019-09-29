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
end