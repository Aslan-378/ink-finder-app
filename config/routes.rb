Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/artist_dashboard' => 'pages#artist_dashboard'
  get '/client_dashboard' => 'pages#client_dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :quizzes

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  resources :users, only: [:index ] do
    resources :requests, only: [:show, :index, :new, :create]
    resources :bookings, only: [:show, :new, :create, :index]
  end
   resources :quizzes, only: [:index, :new, :create]
end
