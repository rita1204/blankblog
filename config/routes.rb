Rails.application.routes.draw do
  root'pages#home'
  get'pages/about' => 'pages#about'

  resources :articles

  resources :users, only: [:new,:create]
end
