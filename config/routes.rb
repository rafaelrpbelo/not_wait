Rails.application.routes.draw do
  root to: 'home#index'

  resources :drivers
  
  get '/calls_queue', to: 'calls_queue#index'
end
