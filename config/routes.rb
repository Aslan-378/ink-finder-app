Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard-artist' => 'pages#artist_dashboard'
  get '/dashboard' => 'pages#client_dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :quizzes
  resources :styles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  resources :users, only: [:index, :show, :edit, :update], path: 'artists' do
    resources :quizzes, only: [:index, :new, :create, :show]
    resources :requests, only: [:show, :index, :new, :create]
    resources :bookings, only: [:show, :new, :create, :index]

  end
  resources :requests, only: [:destroy] do
    member do
      patch '/accept', to: 'requests#accept'
    end
  end

  resources :bookings, only: [:destroy]
  resources :reviews, only: [:create, :new, :index, :show], path: 'gallery'
 end

