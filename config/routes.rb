Rails.application.routes.draw do
  get 'searches/index'
  root 'users#index'
  post 'guest_login', to: 'sessions#guest_login'
  
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations' 
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  resources :chats, only: [:show, :create]
  resources :machines
  resources :lap_time_to_races
  resources :parts
  resources :shops
  resources :searches do
    collection do
      get :search
    end
  end

  get 'shops/index'
  get 'parts/index'
  get 'users/index'

end
