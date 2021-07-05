Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get '/dashboard-artist' => 'pages#artist_dashboard'
  get '/dashboard' => 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :quizzes
  resources :styles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  resources :users, only: [:index, :show, :edit, :update], path: 'artists' do
    resources :quizzes, only: [:index, :new, :create, :show]
    resources :requests, only: [:show, :index, :new, :create]
    resources :bookings, only: [:show, :new, :create, :index]
    resources :reviews, only: [:create, :new, :index]
  end

  resources :requests, only: [:destroy] do
    member do
      patch '/accept', to: 'requests#accept'
    end
    resources :chatrooms, only: [:show, :create, :index]
  end

  resources :chatrooms, only: [:index] do
    resources :messages, only: :create
  end

  resources :bookings, only: [:destroy] do
    member do
      patch '/accept', to: 'bookings#accept'
    end
  end

  resources :reviews, only: [:create, :new, :index, :show]
  resources :galleries do
    resources :comments, only: [:create]
  end

  

end
