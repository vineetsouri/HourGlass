Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :destroy
  get 'welcome' => 'activities#edit'
  get 'dashboard' => 'activities#dashboard'
  resources :activities, only: [:update, :index]
  get 'history' => 'activities#index'
  root 'static_pages#home'
end