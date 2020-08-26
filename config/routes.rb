Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard-artist' => 'pages#artist_dashboard'
  get '/dashboard' => 'pages#client_dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :quizzes

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  resources :users, only: [:index, :show ], path: 'artists' do
    resources :requests, only: [:show, :index, :new, :create]
    resources :bookings, only: [:show, :new, :create, :index]
    resources :reviews, only: [:create, :new]
  end
   resources :quizzes, only: [:index, :new, :create]
end
