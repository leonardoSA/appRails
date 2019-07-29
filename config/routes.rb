Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :comments
  get 'pages/info'
  resources :ideias, only: [:show, :index]

root to: redirect('/ideas')
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ideias, only: [:show, :index]
end
