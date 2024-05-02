Rails.application.routes.draw do
  root 'users#index'
  
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :machines
  resources :lap_time_to_races
  resources :parts
  resources :shops

  get 'shops/index'
  get 'parts/index'
  get 'users/index'

end
