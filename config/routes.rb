Rails.application.routes.draw do
  root to: 'home#index'

  resources :drivers, only: [:new, :create]
  resources :driver_calls, only: [:create]
  
  get '/calls_queue', to: 'calls_queue#index'
end
