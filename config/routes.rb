Rails.application.routes.draw do
  root'pages#home'
  get'pages/about' => 'pages#about'

  resources :articles

  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users, except: [:new]
end
