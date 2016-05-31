Rails.application.routes.draw do

  resources :projects, only: [:show]

  root 'main#index'
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
