Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :camping_cars, only: [ :index, :show ] do
    resources :bookings, only: [ :create ]
  end

  namespace :owner do
    resources :camping_cars, only: [ :index, :new, :create ]
    resources :bookings, only: [] do
      member do
        patch :accept
        patch :deny
      end
    end
  end


  resource :profile, only: [ :show ]
end
