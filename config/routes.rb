Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :coworking_spaces do
    collection do
      get "/myspaces", to: 'coworking_spaces#myspaces'
    end
    resources :bookings, except: [:index]
  end
  resources :bookings, only: [:index] do
    collection do
      get "/mybookings", to: 'bookings#mybookings', as: :mybookings
    end
    member do
      patch "/approve", to: 'bookings#approve'
      patch "/decline", to: 'bookings#decline'
      # "bookings/:id/approve"
    end
    resources :reviews, only: [:new, :create]
  end
  get "/mydashboard", to: 'dashboards#mydashboard'

  resources :users, only: [:edit, :update]
end
