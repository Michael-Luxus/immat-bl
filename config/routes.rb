Rails.application.routes.draw do
  resources :vehicules
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'home/index'
  root 'home#index'

  devise_scope :user do
    get 'users/', to: 'devise/registrations#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
