Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :coworking_spaces do
    resources :bookings, except: [:index]
  end
  resources :bookings, only: [:index] do
    resources :reviews, only: [:new, :create]
  end
end


