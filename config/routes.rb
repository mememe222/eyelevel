Rails.application.routes.draw do
  devise_for :users
  root to: 'arts#index'
  resources :arts, only: [:index, :new, :create, :show, :destroy, :edit, :update]
  resources :users, only: :show
end
