Rails.application.routes.draw do
  devise_for :users
  root to: "landing#index"
  get '/dashboard', to: 'dashboard#index'
  resources :surveys
  resources :entries
  get '/halfway/:token', to: 'application#link'
end
