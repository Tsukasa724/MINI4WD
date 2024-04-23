Rails.application.routes.draw do
  get 'parts/index'
  get 'chassi2s/index'
  get 'motor2s/index'
  root 'users#index'
  get 'users/index'
  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :users, controllers: { registrations: 'registrations' }
  resources :machines
  resources :lap_time_to_races
  resources :parts

  get 'users/sign_in', to: 'sessions#new'
  delete 'users/sign_out', to: 'sessions#destroy'
end
