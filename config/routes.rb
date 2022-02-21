Rails.application.routes.draw do
  root to: 'arts#index'
  resources :arts, only: [:index, :new, :create, :show, :destroy]
end
