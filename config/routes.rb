Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home/index'

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  get 'phaser' => 'pages#phaser'


  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles do
  resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
